using System;
using System.Collections;
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
        private ByteArray AllocationBitmapBytes;
        //public ChunkList<> ListItems;
        public BitArray AllocationBitmap;

        public ByteArray Slot;

        public DatPageHeader()
        {
            Magic = new Magic(new byte[] { 201, 0, 0, 0,
                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
//                                             0, 0, 0, 0,
                                             0, 0, 0, 0,
            });
            Next = new Data32LE();
            Unknown0 = new Data32LE();
            BytesPerSlot = new Data32LE();
            Fragments = new Data32LE();
            EmptySlots = new Data32LE();

            Unknown10Zeroes = new Chararray();
            Unknown10Zeroes.Length = (4 * 10);

            AllocationBitmapBytes = new ByteArray();
            AllocationBitmapBytes.Length = 125;

            Slot = new ByteArray();
            Slot.Length = 64;

            //SetupChunkFields();
            AutomaticFields = new List<ChunkField>() {
                Magic,
                Next,
                Unknown0,
                BytesPerSlot,
                Fragments,
                EmptySlots,
                Unknown10Zeroes,
                AllocationBitmapBytes,
            };
        }

        public override void AfterAutomaticRead(IReader rdr)
        {
            //ListItems.ReadAll(rdr);
            Parser.Dumper.OnInfo("Next Page is on address: " + Next.Value.ToString("X4"));

            AllocationBitmap = new BitArray(AllocationBitmapBytes.Value);

            base.AfterAutomaticRead(rdr);
        }
    }
}
