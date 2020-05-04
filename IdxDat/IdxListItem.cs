using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class IdxListItem : SimpleChunk
    {
        public SignedData32LE Status;
        public Data32LE Entry;
        public Data32LE Next;
        public Data32LE Previous;
        public Data32LE DatPointer;

        const UInt32 MinusOne = 0xFFFFFFFF;

        public IdxListItem()
        {
            SetupChunkFields();
            AutomaticFields = new List<ChunkField>
            {
                Status,
                Entry,
                Next,
                Previous, 
                DatPointer
            };
        }

        public override void BeforeAutomaticRead(FileReader rdr)
        {
            base.BeforeAutomaticRead(rdr);
            Parser.Dumper.OnInfo("<Listitem>");
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            if (Status.Value == -2)
            {
                Parser.Dumper.OnInfo($"Status: {Status.Value}");
                Parser.Dumper.OnInfo($"Type  : {Entry.Value}");
                if (Previous.Value == MinusOne)
                    Parser.Dumper.OnInfo($"Prev  : (none)");
                else
                    Parser.Dumper.OnInfo($"Prev  : {Previous.Value}");

                if (Next.Value == MinusOne)
                    Parser.Dumper.OnInfo($"Next  : (none)");
                else
                    Parser.Dumper.OnInfo($"Next  : {Next.Value}");

                if (DatPointer.Value == MinusOne)
                    Parser.Dumper.OnInfo($"DATptr: (none)");
                else
                    Parser.Dumper.OnInfo($"DATptr: {DatPointer.Value}");
            }

            base.AfterAutomaticRead(rdr);
        }
    }
}
