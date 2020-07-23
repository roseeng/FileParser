using FileParser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IdxDat
{
    public class Entry : SimpleChunk
    {
        public static byte[] commonSig = new byte[] { 0x00, 0x23, 0xA3, 0xDB, 0xDF, 0xB8, 0xD1, 0x11, 0x8A, 0x65, 0x00, 0x60, 0x08, 0x71, 0xA3, 0x91 };

        public Data32LE length;
        public Data32LE type;
        public Data32LE datEntryNumber;
        public Magic signature;

        public long startPos;
        public Chararray diffdata;
      
        public byte[] MakeSig(byte sigbyte)
        {
            var result = commonSig.ToArray();
            result[0] = sigbyte;
            return result;
        }

        public override void BeforeAutomaticRead(IReader rdr)
        {
            startPos = rdr.Position;
            base.BeforeAutomaticRead(rdr);
        }

        public override void AfterAutomaticRead(IReader rdr)
        {
            if (rdr.Position != startPos + length.Value - 4)
            {
                var delta = startPos + length.Value - 4 - rdr.Position;
                /*
                 Do not read up to length
                if (delta > 0)
                {
                    diffdata.Length = (uint)delta;
                    diffdata.Read(rdr);
                }
                */

                if (Parser.Debug)
                    Parser.Dumper.OnInfo($"Diff length: {delta} bytes, Length={length.Value}");
            }

            base.AfterAutomaticRead(rdr);
        }
    }
}
