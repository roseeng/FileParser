using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class DatMainHeader : SimpleChunk
    {
        public Magic Magic = new Magic(new byte[] { 04, 00, 00, 00, 08, 00, 00, 00 });

        public DatMainHeader()
        {
            AutomaticFields = new List<ChunkField>() {
                Magic,
            };
        }
    }
}
