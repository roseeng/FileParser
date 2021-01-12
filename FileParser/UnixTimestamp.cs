using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    /// <summary>
    /// Read a 32 bit unix timestamp
    /// convert to DateTime
    /// </summary>
    public class UnixTimestamp : ChunkField
    {
        private Data32LE data = new Data32LE();
        DateTimeOffset dto;

        public override void Read(IReader rdr)
        {
            data.Read(rdr);
            dto = DateTimeOffset.FromUnixTimeSeconds(data.Value);
        }

        public override void StartNew()
        {
            data.StartNew();
            dto = DateTimeOffset.MinValue;
        }

        public DateTime Value
        {
            get
            {
                return dto.DateTime;
            }
        }

        public override string ToString()
        {
            return dto.DateTime.ToString("yyyy-MM-dd HH:mm:ss");
        }
    }
}
