using FileParser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IdxDat
{
    public class E7Entry : Entry
    {
        //Data32LE length;
        //Data32LE type;
        //Data32LE datEntryNumber;
        //Magic signature;
        Data16LE separator;
        Data32LE label;

        Data32LE unknown0;
        Data32LE unknown1;
        Data32LE unknown2;

        Data16LE nameLength;
        Chararray name;

        public E7Entry()
        {
            signature = new Magic(MakeSig(0xE7));

            SetupChunkFields(inherit: true);
            AutomaticFields = new List<ChunkField>
            {
                 length,
                 type,
                 datEntryNumber,
                 signature,
                 separator,
                 label,
                 unknown0,
                 unknown1,
                 unknown2,
                 nameLength,
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            name.Length = nameLength.Value;
            name.Read(rdr);

            Parser.Dumper.OnInfo($"Address book: {name.Value}");
            base.AfterAutomaticRead(rdr);
        }
    }
}
