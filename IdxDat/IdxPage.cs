using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class IdxPage : SimpleChunk
    {
        public Magic Magic;
        public Data32LE Next;
        public Data32LE Unknown1;
        public Data32LE BytesPerSlot;
        public Data32LE Fragments;
        public Data32LE EmptySlots;
        public Chararray Unknown0;
        public Chararray AllocationBitmap;
        public ChunkList<IdxListItem> ListItems;

        public IdxPage()
        {
            Magic = new Magic(new byte[] { 201, 0, 0, 0,
                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
            });

            Unknown0 = new Chararray();
            Unknown0.Length = (4 * 10);

            AllocationBitmap = new Chararray();
            AllocationBitmap.Length = 125;
            ListItems = new ChunkList<IdxListItem>(ChunkListRepeat.ToCount, 1000);

            SetupChunkFields();
            AutomaticFields = new List<ChunkField>() {
                Magic,
                Next,
                Unknown1,
                BytesPerSlot,
                Fragments,
                EmptySlots,
                Unknown0,
                AllocationBitmap,
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            //ListItems.ReadAll(rdr);
            for (int i = 0; i < 1000; i++)
                ListItems.ReadOne(rdr);

            base.AfterAutomaticRead(rdr);
        }
    }
}
