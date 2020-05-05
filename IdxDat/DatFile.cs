using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class DatFile : FileChunk
    {
        public DatMainHeader Header = new DatMainHeader();
        public DatPageHeader PageHeader = new DatPageHeader();

        public byte[] ValidSigs;
        public PolyChunk PolyChunk = new PolyChunk();
        
        public LongMessage LongMessage = new LongMessage();

        public DatFile()
        {
            PolyChunk.RegisterType(typeof(E0Entry));
            PolyChunk.RegisterType(typeof(E5Entry));
            PolyChunk.RegisterType(typeof(E7Entry));

            ValidSigs = new byte[] { 0xE0, 0xE5, 0xE7 };
        }
    }
}
