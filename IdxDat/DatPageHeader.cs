using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class DatPageHeader : SimpleChunk
    {
        public Magic Magic;
        public Data32LE Next;
        public Data32LE Unknown0;
        public Data32LE BytesPerSlot;
        public Data32LE Fragments;
        public Data32LE EmptySlots;
        public Chararray Unknown10Zeroes;
        public Chararray AllocationBitmap;
        //public ChunkList<> ListItems;

        public DatPageHeader()
        {
            Magic = new Magic(new byte[] { 201, 0, 0, 0,
                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
//                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
            });

            Unknown10Zeroes = new Chararray();
            Unknown10Zeroes.Length = (4 * 10);

            AllocationBitmap = new Chararray();
            AllocationBitmap.Length = 125;           

            SetupChunkFields();
            AutomaticFields = new List<ChunkField>() {
                Magic,
                Next,
                Unknown0,
                BytesPerSlot,
                Fragments,
                EmptySlots,
                Unknown10Zeroes,
                AllocationBitmap,
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            //ListItems.ReadAll(rdr);
            Parser.Dumper.OnInfo("Next Page is on address: " + Next.Value.ToString("X4"));

            base.AfterAutomaticRead(rdr);
        }
    }
}
