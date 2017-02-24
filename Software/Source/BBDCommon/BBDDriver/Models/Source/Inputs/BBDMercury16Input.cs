﻿using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using libusbK;
using LibUsbDotNet;
using MadWizard.WinUSBNet;
using System.Runtime.InteropServices;
using BBDDriver.Models.IEEE11073;

namespace BBDDriver.Models.Source
{
    internal class BBDMercury16Input : MultiChannelInput<IDataChannel>, IDisposable
    {
        // warning: interface guid changes when the driver is regenerated (by zadig)
        private const string DEVICE_INTERFACE_GUID = "{a59515a9-4bb2-4032-b9b9-1b1b6a0aa023}";
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

        [StructLayout(LayoutKind.Sequential)]
        private struct CellSettings
        {            
            // reset | enabled
            [MarshalAs(UnmanagedType.U1)]
            public byte DeviceStatus;

            // unknown | cell | organizer
            [MarshalAs(UnmanagedType.U1)]
            public byte DeviceType;

            // MPCM index
            [MarshalAs(UnmanagedType.U1)]
            public byte DeviceIndex;

            // unique ID
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 DeviceID;

            // system clock speed in Hz
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 SystemClock;

            // ADC clock speed in Hz
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 ADCClock;

            // is ADC-A enabled
            [MarshalAs(UnmanagedType.Bool)]
            public bool ADCAEnabled;

            // is ADC-B enabled
            [MarshalAs(UnmanagedType.Bool)]
            public bool ADCBEnabled;

            // ADC reference
            [MarshalAs(UnmanagedType.U1)]
            public byte ADCReference;

            // ADC gain
            [MarshalAs(UnmanagedType.U1)]
            public byte ADCGain;

            // sampling timer rate in Hz
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 SampleRate;

            // compensation of the timer (slightly changes the speed)
            [MarshalAs(UnmanagedType.I2)]
            public short SampleRateCompensation;

            // number of channels
            [MarshalAs(UnmanagedType.U4)]
            public UInt32 ChannelCount;

            [MarshalAs(UnmanagedType.U1)]
            public byte USBAddress;

            [MarshalAs(UnmanagedType.Bool)]
            public bool USBHighSpeed;

            [MarshalAs(UnmanagedType.Bool)]
            public bool SendADCValuesToUSB;

            [MarshalAs(UnmanagedType.Bool)]
            public bool SendADCValuesToUSART;
        }

        public BBDMercury16Input(USBDeviceInfo selectedDevice = null) : base(8000, 8)
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
            }

            // Find your device in the array
            usbDevice = new USBDevice(selectedDevice);
            usbInterface = usbDevice.Interfaces.Find(USBBaseClass.PersonalHealthcare);

            CellSettings cellSettings;

            var phdPacket = ReadIEEE11073Pakcet(usbInterface.InPipe);

            // stop streaming data
            usbInterface.OutPipe.Write(new byte[] { 0xF0, 0x01, 0x00, 0x00 });
            
            // get the cell settings
            usbInterface.OutPipe.Write(new byte[] { 0xF0, 0x03, 0x00, 0x00 });
            cellSettings = ReadPacket<CellSettings>(usbInterface.InPipe);

            // start streaming data
            usbInterface.OutPipe.Write(new byte[] { 0xF0, 0x02, 0x00, 0x00 });

            cellSettings.ChannelCount = 8;
            //this.SamplesPerSecond = cellSettings.SampleRate;
            for (int i = 0; i < cellSettings.ChannelCount; i++)
            {
                this.SetChannel(i, new SinglePrecisionDataChannel(this.SamplesPerSecond, this.SamplesPerSecond * 5));
            }

            this.BufferSize = Math.Max(this.BufferSize, this.SamplesPerSecond * this.ChannelCount * 2 / targetFPS);

            Task usbPollTask = Task.Run(() =>
            {
                while (PollUSBData(this)) {}
            });
        }

        private T ReadPacket<T>(USBPipe pipe)
        {
            byte[] rawHeaderLE = new byte[8];
            usbInterface.InPipe.Read(rawHeaderLE);
            GCHandle handle = GCHandle.Alloc(rawHeaderLE, GCHandleType.Pinned);
            APDU apdu = (APDU)Marshal.PtrToStructure(handle.AddrOfPinnedObject(), typeof(APDU));
            handle.Free();

            if (apdu.Length > 0)
            {
                byte[] rawBodyLE = new byte[apdu.Length];
                usbInterface.InPipe.Read(rawBodyLE);
                handle = GCHandle.Alloc(rawBodyLE, GCHandleType.Pinned);
                T result = (T)Marshal.PtrToStructure(handle.AddrOfPinnedObject(), typeof(T));
                handle.Free();
                return result;
            } else
            {
                return default(T);
            }
        }

        private APDU ReadIEEE11073Pakcet(USBPipe pipe)
        {
            byte[] rawHeaderBE = new byte[8];
            usbInterface.InPipe.Read(rawHeaderBE);

            APDU apdu = Tools.GetBigEndian<APDU>(rawHeaderBE);
            
            if (apdu.Length > 0)
            {
                byte[] rawBodyBE = new byte[apdu.Length];
                usbInterface.InPipe.Read(rawBodyBE);

                if (apdu.Choice == 0xE700)
                {
                    apdu.Data = Tools.GetBigEndian<DataAPDU>(rawBodyBE);
                } else
                {
                    apdu.Data = new DataAPDU();
                }
            }

            return apdu;
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
            byte[] rawDataFromUSB = new byte[this.BufferSize];
            int readBytes = 0;

            try
            {
                readBytes = usbInterface.InPipe.Read(rawDataFromUSB);
            }
            catch
            {
                return false;
            }

            DataRateBenchmarkEntry drbe = new DataRateBenchmarkEntry() { TimeStamp = DateTime.UtcNow, IsRead = true, BytesTransferred = readBytes, SamplesTransferred = readBytes / 2 / channels.Length };

            Task processUsbDataTask = Task.Run(() =>
            {
                ProcessUSBData(rawDataFromUSB, readBytes, drbe);
            });

            lock (BenchmarkEntries)
            {
                BenchmarkEntries.Add(drbe);
                BenchmarkEntries.RemoveAll(be => be.TimeStamp < DateTime.UtcNow.AddSeconds(-5));
            }

            return true;
        }

        private void ProcessUSBData(byte[] rawDataFromUSB, int readBytes, DataRateBenchmarkEntry drbe)
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

                    floats[j] = (shortValue / 65536.0f) * ADCReferenceV;

                    ushort valueChange = (ushort)Math.Abs(shortValue - prevShortValue);
                    if (valueChange > drbe.MaxJumpBetweenSampleValues) drbe.MaxJumpBetweenSampleValues = valueChange;

                    // 12 bit samples are shifted to left by 4 bits, so we need check if the change is higher than 256 << 4 = 4096
                    if (valueChange >= 4096) drbe.EightBitChangeOverflowCount++;
                    if ((j > 0) && (valueChange == 0)) drbe.SameValueWarningCount++;

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
        }
    }
}
