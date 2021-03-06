﻿using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using libusbK;
using LibUsbDotNet;
using MadWizard.WinUSBNet;
using System.Runtime.InteropServices;
using BBD.DSP.Models.IEEE11073;
using System.Diagnostics;
using BBD.DSP.Models.Filter;

namespace BBD.DSP.Models.Source
{
    public class Mercury16GoertzelFilterSettings : ChannelFilterSettings
    {
        public int FFTSampleCount { get; set; }
        public int Timeout { get; set; }
        public bool IsRealTime { get; set; }
        public FFTOutputFormat OutputFormat { get; set; }
    }

    internal class BBDMercury16Input : MultiChannelInput<IDataChannel>, IDisposable
    {
        // warning: interface guid changes when the driver is regenerated (by zadig)
        // the new DeviceGUID can be found in the .inf file in the 'C:\Users\{username}\usb_driver' folder.
        private const string DEVICE_INTERFACE_GUID = "{515CBB1B-8BCD-40F1-9B7D-6853970F6630}"; // Sheldon
        //private const string DEVICE_INTERFACE_GUID = "{1E04662A-6FF7-4864-B7B7-8BBA6658585F}"; // Mr. Pepper
        private const int DEVICE_VID = 0x03EB;
        private const int DEVICE_PID = 0x2405;
        private const string DEVICE_DESC = "Mercury-16";
        private const int targetFPS = 30;

        //private KLST_DEVINFO_HANDLE deviceInfo;
        //private LibUsbDotNet.Main.UsbRegistry deviceInfo;
        //private LibUsbDotNet.UsbEndpointReader reader;
        //private LibUsbDotNet.UsbEndpointWriter writer;

        public List<DataRateBenchmarkEntry> BenchmarkEntries = new List<DataRateBenchmarkEntry>();

        private USBDevice usbDevice;
        private USBInterface usbInterface;

        public int CPUClockSpeedMhz { get; set; } = 32;
        public int ADCSpeedkMhz { get; set; } = 2;
        public float ADCReferenceV { get; set; } = 1.0f;
        public int ADCGain { get; set; } = 1;
        public int SampleRatekHz { get; set; } = 8;
        public int BufferSize { get; set; } = 32 * 1024;

        public List<float>[] GoertzelOutputs;
        public float GoertzelFrequency01;
        public float GoertzelFrequency02;
        public float GoertzelFrequency03;

        private Dictionary<int, PacketStats> packetStats = new Dictionary<int, PacketStats>();

        [StructLayout(LayoutKind.Sequential, Pack = 1)]
        private struct CellSettings
        {
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 FirmwareVersion;

            [MarshalAs(UnmanagedType.U1)]
            public byte TestMode;

            // reset | enabled
            [MarshalAs(UnmanagedType.U1)]
            public byte DeviceStatus;

            // unknown | cell | organizer
            [MarshalAs(UnmanagedType.U1)]
            public byte DeviceType;

            // MPCM index
            [MarshalAs(UnmanagedType.U1)]
            public byte DeviceIndex;

            // same ID for the same type of chip (e.g. Atmel XMEGA256A4)
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 DeviceID;

            // unique serial for every chip
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 DeviceSerial;

            // system clock speed in Hz
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 SystemClock;

            // ADC clock speed in Hz
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 ADCClock;

            // is any of the ADCs enabled
            [MarshalAs(UnmanagedType.U1)]
            public bool ADCEnabled;

            // is ADC-A enabled
            [MarshalAs(UnmanagedType.U1)]
            public bool ADCAEnabled;

            // is ADC-B enabled
            [MarshalAs(UnmanagedType.U1)]
            public bool ADCBEnabled;

            // ADC reference
            [MarshalAs(UnmanagedType.U1)]
            public byte ADCReference;

            // ADC gain
            [MarshalAs(UnmanagedType.U1)]
            public byte ADCGain;

            [MarshalAs(UnmanagedType.U1)]
            public byte ADCBits;

            // sampling timer rate in Hz
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 SampleRate;

            // compensation of the timer (slightly changes the speed)
            [MarshalAs(UnmanagedType.I2)]
            public short SampleRateCompensation;

            // number of channels
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 ChannelCount;

            // is DAC enabled
            [MarshalAs(UnmanagedType.U1)]
            public bool DACEnabled;

            // is USB enabled
            [MarshalAs(UnmanagedType.U1)]
            public bool USBEnabled;

            [MarshalAs(UnmanagedType.U1)]
            public byte USBAddress;

            [MarshalAs(UnmanagedType.U4)]
            public UInt32 USBSpeed;

            // is USART enabled
            [MarshalAs(UnmanagedType.U1)]
            public bool USARTEnabled;

            // USART mode (1 - async, 2 - sync master, 3 - sync slave)
            [MarshalAs(UnmanagedType.U1)]
            public byte USARTMode;

            [MarshalAs(UnmanagedType.U4)]
            public UInt32 USARTSpeed;

            [MarshalAs(UnmanagedType.U1)]
            public bool GoertzelEnabled;

            [MarshalAs(UnmanagedType.R4)]
            public float GoertzelFrequency01;

            [MarshalAs(UnmanagedType.R4)]
            public float GoertzelFrequency02;

            [MarshalAs(UnmanagedType.R4)]
            public float GoertzelFrequency03;

            [MarshalAs(UnmanagedType.U1)]
            public byte ADCValueBits;

            [MarshalAs(UnmanagedType.U4)]
            public UInt32 ADCValueCountPerPacket;

            [MarshalAs(UnmanagedType.U1)]
            public bool ADCValuePacketToUSB;

            [MarshalAs(UnmanagedType.U1)]
            public bool ADCValuePacketToUSART;

            [MarshalAs(UnmanagedType.U1)]
            public bool GoertzelPacketToUSB;

            [MarshalAs(UnmanagedType.U1)]
            public bool GoertzelPacketToUSART;
        }

        public BBDMercury16Input(USBDeviceInfo selectedDevice = null) : base(4000, 8)
        {
            string expectedDeviceID = $"USB\\VID_{DEVICE_VID}&PID_{DEVICE_PID}";

            // libusbK implementation
            //int deviceCount = 0;
            //KLST_DEVINFO_HANDLE deviceInfo;
            //LstK lst = new LstK(KLST_FLAG.NONE);

            //lst.Count(ref deviceCount);
            //while (lst.MoveNext(out deviceInfo))
            //{
            //    Console.WriteLine("libusbk: " + deviceInfo.DeviceInterfaceGUID.ToLower());
            //}

            //lst.Free();


            // DotNetLibUsb
            //var deviceList = LibUsbDotNet.LibUsb.LibUsbDevice.AllDevices.ToArray();
            //foreach (var deviceInfoLUDN in deviceList)
            //{
            //    Console.WriteLine("libusb: " + deviceInfoLUDN.DeviceInterfaceGuids[0].ToString().ToLower() + " - " + deviceInfoLUDN.Device.Info.ProductString);
            //}

            //if (this.deviceInfo == null)
            //{
            //    throw new System.IO.IOException("There is no BBD Mercury-16 connected on any of the USB ports.");
            //}

            //if (deviceInfo.Device.Open())
            //{
            //    reader = deviceInfo.Device.OpenEndpointReader(LibUsbDotNet.Main.ReadEndpointID.Ep01);
            //    writer = deviceInfo.Device.OpenEndpointWriter(LibUsbDotNet.Main.WriteEndpointID.Ep01);
            //}

            // WinUSB.NET
            if (selectedDevice == null)
            {
                // GUID is an example, specify your own unique GUID in the .inf file
                USBDeviceInfo[] connectedDevices = USBDevice.GetDevices(DEVICE_INTERFACE_GUID);

                if (connectedDevices.Length == 0) throw new System.IO.IOException("There is no BBD Mercury-16 connected on any of the USB ports.");

                selectedDevice = connectedDevices[0];

                //USBNotifier notifier = new USBNotifier(null, DEVICE_INTERFACE_GUID);
            }

            // Find your device in the array
            usbDevice = new USBDevice(selectedDevice);
            usbInterface = usbDevice.Interfaces.Find(USBBaseClass.PersonalHealthcare);

            var phdPacket = ReadIEEE11073Pakcet(usbInterface.InPipe);

            // stop streaming data
            usbInterface.OutPipe.Write(new byte[] { 0xF0, 0x01, 0x00, 0x00 });

            CellSettings cellSettings = new CellSettings();
            while (cellSettings.SystemClock == 0)
            {
                // get the cell settings
                usbInterface.OutPipe.Write(new byte[] { 0xF0, 0x03, 0x00, 0x00 });
                cellSettings = ReadPacket<CellSettings>(usbInterface.InPipe, 0xF004, 10);
            }

            // set the modified cell settings
            //cellSettings.SampleRate /= 4;
            //WritePacket<CellSettings>(usbInterface.OutPipe, 0xF009, cellSettings);

            // start streaming data
            usbInterface.OutPipe.Write(new byte[] { 0xF0, 0x02, 0x00, 0x00 });

            if ((cellSettings.ChannelCount != 8) && (cellSettings.ChannelCount != 16) && (cellSettings.ChannelCount != 24))
            {
                throw new Exception($"The number of channels reported by Mercury-16 ({cellSettings.ChannelCount}) is invalid!");
            }


            //this.SamplesPerSecond = cellSettings.SampleRate;
            for (int i = 0; i < cellSettings.ChannelCount; i++)
            {
                this.SetChannel(i, new SinglePrecisionDataChannel(this.SamplesPerSecond, this.SamplesPerSecond * 5));
            }

            this.BufferSize = Math.Max(this.BufferSize, this.SamplesPerSecond * this.ChannelCount * 2 / targetFPS);
            this.GoertzelOutputs = new List<float>[this.ChannelCount];
            this.GoertzelFrequency01 = cellSettings.GoertzelFrequency01;
            this.GoertzelFrequency02 = cellSettings.GoertzelFrequency02;
            this.GoertzelFrequency03 = cellSettings.GoertzelFrequency03;

            Task usbPollTask = Task.Run(() =>
            {
                while (PollUSBData(this)) {}
            });
        }

        private T ReadPacket<T>(USBPipe pipe, UInt16 choice = 0, int maxDiscardedPackets = 0)
        {
            T result = default(T);

            lock (pipe)
            {
                byte[] rawHeaderLE = new byte[4];
                usbInterface.InPipe.Read(rawHeaderLE);
                GCHandle handle = GCHandle.Alloc(rawHeaderLE, GCHandleType.Pinned);
                APDU apdu = (APDU)Marshal.PtrToStructure(handle.AddrOfPinnedObject(), typeof(APDU));
                handle.Free();

                if (apdu.Length > 0)
                {
                    byte[] rawBodyLE = new byte[apdu.Length];
                    usbInterface.InPipe.Read(rawBodyLE);

                    handle = GCHandle.Alloc(rawBodyLE, GCHandleType.Pinned);
                    result = (T)Marshal.PtrToStructure(handle.AddrOfPinnedObject(), typeof(T));
                    handle.Free();
                }

                if ((choice != 0) && (apdu.Choice != choice) && (maxDiscardedPackets > 0))
                {
                    // this is not the packet we are looking for
                    return ReadPacket<T>(pipe, choice, --maxDiscardedPackets);
                }
            }

            return result;
        }

        private void WritePacket<T>(USBPipe pipe, UInt16 choice, T dataToSend)
        {
            List<byte> rawData = new List<byte>();
            rawData.AddRange(ObjectToBinaryData<T>(dataToSend));
            

            // APDU must be converted to little endian so we need some trickery here
            APDU apdu = new APDU() { Choice = choice, Length = (ushort)rawData.Count };
            byte[] apduBE = ObjectToBinaryData<APDU>(apdu);

            rawData.InsertRange(0, new byte[] { apduBE[1], apduBE[0], apduBE[3], apduBE[2] });

            lock (pipe)
            {
                usbInterface.OutPipe.Write(rawData.ToArray());
            }
        }

        private byte[] ObjectToBinaryData<T>(T dataToSend)
        {
            byte[] rawData = new byte[Marshal.SizeOf(dataToSend)];

            IntPtr unmanagedAddr = Marshal.AllocHGlobal(Marshal.SizeOf(dataToSend));

            Marshal.StructureToPtr(dataToSend, unmanagedAddr, true);

            Marshal.Copy(unmanagedAddr, rawData, 0, rawData.Length);

            return rawData;
        }

        private DataPacket ReadPacketRaw(USBPipe pipe)
        {
            DataPacket result = new DataPacket();

            lock (pipe)
            {
                byte[] rawHeaderLE = new byte[4];
                usbInterface.InPipe.Read(rawHeaderLE);
                GCHandle handle = GCHandle.Alloc(rawHeaderLE, GCHandleType.Pinned);
                result.APDU = (APDU)Marshal.PtrToStructure(handle.AddrOfPinnedObject(), typeof(APDU));
                handle.Free();

                if (result.APDU.Length > 0)
                {
                    byte[] rawBodyLE = new byte[result.APDU.Length];
                    usbInterface.InPipe.Read(rawBodyLE);
                    result.RawData = rawBodyLE;
                    result.Data = new DataAPDU();
                }
            }

            return result;
        }

        private DataPacket ReadIEEE11073Pakcet(USBPipe pipe)
        {
            DataPacket result = new DataPacket();

            lock (pipe)
            {
                byte[] rawHeaderBE = new byte[4];
                usbInterface.InPipe.Read(rawHeaderBE);

                result.APDU = Tools.GetBigEndian<APDU>(rawHeaderBE);


                if (result.APDU.Length > 0)
                {
                    byte[] rawBodyBE = new byte[result.APDU.Length];
                    usbInterface.InPipe.Read(rawBodyBE);
                    result.RawData = rawBodyBE;
                    result.Data = new DataAPDU();

                    if (result.APDU.Choice == 0xE700)
                    {
                        result.Data = Tools.GetBigEndian<DataAPDU>(rawBodyBE);
                    }
                }
            }

            return result;
        }

        private string FormatRawData(byte[] rawDataFromUSB)
        {
            return "(" + rawDataFromUSB.Length + "): " + String.Join(" ", Array.ConvertAll(rawDataFromUSB, b => "0x" + b.ToString("X2")));
        }

        private byte UsbPipeReaderMethod(USBPipe pipe)
        {
            byte[] rawByte = new byte[1];
            pipe.Read(rawByte);
            return rawByte[0];            
        }

        [Obsolete]
        private byte[] ReadAllFromPipe(USBPipe pipe)
        {
            List<byte> result = new List<byte>();

            while (result.Count < 2 * 1024)
            {
                var task = Task.Run(() => UsbPipeReaderMethod(pipe)); //you can pass parameters to the method as well
                if (task.Wait(TimeSpan.FromSeconds(0.1)))
                    result.Add(task.Result); //the method returns elegantly
                else
                    break; //the method timed-out
            }

            return result.ToArray();
        }


        private bool PollUSBData(object stateInfo)
        {
            DataPacket dp = null;

            try
            {
                dp = ReadPacketRaw(usbInterface.InPipe);
            }
            catch
            {
                return false;
            }

            if (packetStats.ContainsKey(dp.APDU.Choice) && (packetStats[dp.APDU.Choice].LastResetTime.AddSeconds(1) < DateTime.UtcNow))
            {
                Debug.WriteLine($"The current rate of APDU choice #{dp.APDU.Choice.ToString("X")} is {(packetStats[dp.APDU.Choice].PacketCount / (DateTime.UtcNow - packetStats[dp.APDU.Choice].LastResetTime).TotalSeconds).ToString("0.00")} packets/second", "Information");
                packetStats.Remove(dp.APDU.Choice);
            }

            if (!packetStats.ContainsKey(dp.APDU.Choice))
            {
                packetStats.Add(dp.APDU.Choice, new PacketStats() { LastResetTime = DateTime.UtcNow });
            }
            packetStats[dp.APDU.Choice].PacketCount++;

            if (dp.APDU.Choice == 0xF005)
            {
                // this is a heartbeat
            }
            else if ((dp.APDU.Choice == 0xF006) || (dp.APDU.Choice == 0xF007))
            {
                // this is an ADC data packet

                DataRateBenchmarkEntry drbe = new DataRateBenchmarkEntry() { TimeStamp = DateTime.UtcNow, IsRead = true, BytesTransferred = dp.RawData.Length, SamplesTransferred = 0 };

                // get the device id
                UInt32 deviceSerial = System.BitConverter.ToUInt32(dp.RawData, 0);

                // get the channel count
                UInt32 channelCount = System.BitConverter.ToUInt32(dp.RawData, 4);

                // get the valid value count
                UInt32 validValueCount = System.BitConverter.ToUInt32(dp.RawData, 8);

                if (dp.APDU.Choice == 0xF006)
                {
                    // allocate 2 bytes per value
                    byte[] channelData = new byte[channelCount * validValueCount * 2];
                    Array.Copy(dp.RawData, 12, channelData, 0, channelData.Length);

                    // 16-bit ushort data type
                    drbe.SamplesTransferred = channelData.Length / 2 / channels.Length;

                    Task processUsbDataTask = Task.Run(() =>
                    {
                        float[] adcDataFloats = ConvertRawShortADCData(channelData);
                        ProcessFloatADCData(adcDataFloats);
                    });
                }
                else if (dp.APDU.Choice == 0xF007)
                {
                    // allocate 4 bytes per value
                    byte[] channelData = new byte[channelCount * validValueCount * 4];
                    Array.Copy(dp.RawData, 12, channelData, 0, channelData.Length);

                    // 32-bit float data type
                    drbe.SamplesTransferred = channelData.Length / 4 / channels.Length;

                    Task processUsbDataTask = Task.Run(() =>
                    {
                        float[] adcDataFloats = ConvertRawFloatToArray(channelData);
                        ProcessFloatADCData(adcDataFloats);
                    });
                }

                lock (BenchmarkEntries)
                {
                    BenchmarkEntries.Add(drbe);
                    BenchmarkEntries.RemoveAll(be => be.TimeStamp < DateTime.UtcNow.AddSeconds(-5));
                }
            }
            else if (dp.APDU.Choice == 0xF008)
            {
                // this is a Goertzel packet

                DataRateBenchmarkEntry drbe = new DataRateBenchmarkEntry() { TimeStamp = DateTime.UtcNow, IsRead = true, BytesTransferred = dp.RawData.Length, SamplesTransferred = 0 };

                // get the device id
                UInt32 deviceSerial = System.BitConverter.ToUInt32(dp.RawData, 0);

                // get the channel count
                UInt32 channelCount = System.BitConverter.ToUInt32(dp.RawData, 4);

                // get the valid value count
                UInt32 valueCount = System.BitConverter.ToUInt32(dp.RawData, 8);

                // get the valid value count
                UInt32 goertzelCount = System.BitConverter.ToUInt32(dp.RawData, 12);

                // allocate 4 bytes per Goerztel frequency
                byte[] goertzelFrequenciesRaw = new byte[goertzelCount * 4];
                Array.Copy(dp.RawData, 16, goertzelFrequenciesRaw, 0, goertzelFrequenciesRaw.Length);
                float[] goertzelFrequencies = ConvertRawFloatToArray(goertzelFrequenciesRaw);

                // allocate 4 bytes per Goerztel frequency
                byte[] goertzelValuesRaw = new byte[channelCount * valueCount * goertzelCount * 4];
                Array.Copy(dp.RawData, 16 + goertzelFrequenciesRaw.Length, goertzelValuesRaw, 0, goertzelValuesRaw.Length);
                float[] goertzelValues = ConvertRawFloatToArray(goertzelValuesRaw);

                // push Goerzel values into the pipeline
                for (int c = 0; c < channelCount; c++)
                {
                    float[] channelGoertzelValues = new float[valueCount * goertzelCount];
                    Array.Copy(goertzelValues, c * valueCount * goertzelCount, channelGoertzelValues, 0, valueCount * goertzelCount);

                    if (GoertzelOutputs[c] == null)
                    {
                        GoertzelOutputs[c] = new List<float>();
                    }

                    lock (GoertzelOutputs[c])
                    {
                        GoertzelOutputs[c].AddRange(channelGoertzelValues);
                    }
                }

                lock (BenchmarkEntries)
                {
                    BenchmarkEntries.Add(drbe);
                    BenchmarkEntries.RemoveAll(be => be.TimeStamp < DateTime.UtcNow.AddSeconds(-5));
                }
            }
            else if (dp.APDU.Choice != 0x0000)
            {
                Debug.WriteLine($"{DateTime.Now.ToString()} Unknown packet received with APDU Choice '{dp.APDU}'.", "Warning");
            }

            return true;
        }

        private float[] ConvertRawShortADCData(byte[] rawADCData)
        {
            float[] floats = new float[rawADCData.Length / 2];

            for (int i = 0; i < floats.Length; i++)
            {
                ushort shortValue = System.BitConverter.ToUInt16(rawADCData, i * 2);
                floats[i] = ((shortValue / 65536.0f) - 0.5f) * (ADCReferenceV * 2);
            }

            return floats;
        }

        private float[] ConvertRawFloatToArray(byte[] rawData)
        {
            float[] floats = new float[rawData.Length / 4];

            for (int i = 0; i < floats.Length; i++)
            {
                float floatValue = System.BitConverter.ToSingle(rawData, i * 4);
                floats[i] = floatValue;
            }

            return floats;
        }

        private void ProcessFloatADCData(float[] floatADCData)
        {
            float[] floats = new float[floatADCData.Length / channels.Length];
            for (int i = 0; i < channels.Length; i++)
            {
                if (channels[i] == null) continue;

                for (int j = 0; j < floats.Length; j++)
                {
                    floats[j] = floatADCData[j * channels.Length + i];
                }

                channels[i].AppendData(floats);
            }
        }

        private void ProcessUSBData(byte[] rawDataFromUSB, int readBytes)
        {
            if (readBytes == 0) return;

            ushort[] shorts = new ushort[readBytes / 2];
            for (int i = 0; i < shorts.Length; i++)
            {
                shorts[i] = System.BitConverter.ToUInt16(rawDataFromUSB, i * 2);
            }

            ushort prevShortValue = 0;

            float[] floats = new float[shorts.Length / channels.Length];
            for (int i = 0; i < channels.Length; i++)
            {
                if (channels[i] == null) continue;

                for (int j = 0; j < floats.Length; j++)
                {
                    ushort shortValue = shorts[j * channels.Length + i];
                    if (j == 0) prevShortValue = shortValue;


                    floats[j] = ((shortValue / 65536.0f) - 0.5f) * (ADCReferenceV * 2);



                    ushort valueChange = (ushort)Math.Abs(shortValue - prevShortValue);

                    prevShortValue = shortValue;
                }

                channels[i].AppendData(floats);
            }
        }

        public override float[] GetValues()
        {
            return base.GetValues();
        }

        void IDisposable.Dispose()
        {
            usbDevice.Dispose();
        }
    }

    internal class PacketStats
    {
        public DateTime LastResetTime;
        public int PacketCount;
    }
}
