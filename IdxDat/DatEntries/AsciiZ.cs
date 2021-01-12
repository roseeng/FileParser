using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat.DatEntries
{
    /// <summary>
    /// A combination of a 16-bit length and a zero-terminated string,
    /// treated as one field
    /// </summary>
    public class AsciiZ : ChunkField
    {
        private Data16LE Length = new Data16LE();
        private Chararray Text = new Chararray();

        public override void Read(IReader rdr)
        {
            Length.Read(rdr);
            Text.Length = Length.Value;
            Text.Read(rdr);
        }

        public override void StartNew()
        {
            Length.StartNew();
            Text.StartNew();
        }

        public string Value
        {
            get
            {
                if (Text.Value.Length == 0)
                    return "";
                // Strip off the null byte
                return Text.Value.Substring(0, Text.Value.Length - 1); 
            }
        }
    }
}
