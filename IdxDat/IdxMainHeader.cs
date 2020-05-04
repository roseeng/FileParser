using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class IdxMainHeader : SimpleChunk
    {
        public Magic Magic = new Magic(new byte[] { 04, 00, 00, 00, 20, 00, 00, 00, 08, 00, 00, 00 });
        public Data32LE pRoot = new Data32LE();
        public Data32LE Version = new Data32LE();

        public IdxMainHeader()
        {
            AutomaticFields = new List<ChunkField>() {
                Magic,
                pRoot,
                Version,
            };
        }
    }
}
