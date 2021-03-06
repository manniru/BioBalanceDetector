﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace BBD.DSP.Models.Source
{
    /// <summary>
    /// Data channel with a sine wave generator
    /// </summary>
    public class SineChannel : SinglePrecisionDataChannel
    {
        private const double phaseReset = 2 * Math.PI;
        private DateTime startTimeUtc = DateTime.MinValue;
        private DateTime lastGenerationTimeUtc = DateTime.MinValue;

        private int interval = 0;
        private Timer newDataGeneretedTimer;

        public SineChannel(int samplesPerSecond, float minimumFrequency, float maximumFrequency, float lengthInSeconds, int maxFramesPerSecond = 25) : base(samplesPerSecond, (int)(samplesPerSecond * lengthInSeconds))
        {
            double phase = 0.0;
            double minPhaseChange = (minimumFrequency * phaseReset) / samplesPerSecond;
            double maxPhaseChange = (maximumFrequency * phaseReset) / samplesPerSecond;

            for (int i=1; i < this.BufferSize; i++)
            {
                double rate = (i <= this.BufferSize/2 ? ((i * 2.0) / this.BufferSize) : (((this.BufferSize-i) * 2.0) / this.BufferSize));  // goes from 0.0 to 1.0 and back to 0.0 linearly 
                phase += (minPhaseChange + (maxPhaseChange - minPhaseChange) * rate);
                this.Data[i] = (float)Math.Sin(phase);
            }

            interval = 1000 / maxFramesPerSecond;
            newDataGeneretedTimer = new Timer(DataGenerated, this, 0, interval);
        }

        public override float[] GetData(int sampleCount, int? position = null)
        {
            if (startTimeUtc == DateTime.MinValue) return new float[sampleCount];

            int readPosition = (position.HasValue ? position.Value : this.BufferPosition);

            return base.GetData(sampleCount, readPosition);
        }

        private void DataGenerated(object stateInfo)
        {
            int newBufferPosition = 0;

            if (startTimeUtc == DateTime.MinValue)
            {
                startTimeUtc = DateTime.UtcNow;
                lastGenerationTimeUtc = DateTime.UtcNow;
            }
            int newDataCount = (int)(this.SamplesPerSecond * (DateTime.UtcNow - lastGenerationTimeUtc).TotalSeconds);

            lock (this.Data)
            {
                this.BufferPosition = (this.BufferPosition + newDataCount) % this.BufferSize;
                newBufferPosition = this.BufferPosition;
                lastGenerationTimeUtc = DateTime.UtcNow;
            }

            OnDataChanged(new DataChangedEventArgs(this, newBufferPosition, newDataCount));
        }
    }
}
