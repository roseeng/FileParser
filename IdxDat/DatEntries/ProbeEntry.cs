using FileParser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IdxDat
{
    public class ProbeEntry : SimpleChunk
    {
        public static byte[] commonSig = new byte[] { /*0x00,*/ 0x23, 0xA3, 0xDB, 0xDF, 0xB8, 0xD1, 0x11, 0x8A, 0x65, 0x00, 0x60, 0x08, 0x71, 0xA3, 0x91 };

        public Data32LE length;
        public Data32LE type;
        public Data32LE datEntryNumber;
        public Data8 sigByte;
        public Magic signature;

        public long startPos;
        public Chararray diffdata;     

        public ProbeEntry()
        {
            signature = new Magic(commonSig);
            SetupChunkFields();
            AutomaticFields = new List<ChunkField>
            {
                 length,
                 type,
                 datEntryNumber,
                 sigByte,
                 signature,
            };
        }

        public override void BeforeAutomaticRead(IReader rdr)
        {
            startPos = rdr.Position;
            base.BeforeAutomaticRead(rdr);
        }

        public override void AfterAutomaticRead(IReader rdr)
        {
            if (Parser.Debug)
                Parser.Dumper.OnInfo($"Valid entry header! Type: {sigByte.Value:X2} bytes, Length={length.Value}");

            base.AfterAutomaticRead(rdr);
        }
    }
}
