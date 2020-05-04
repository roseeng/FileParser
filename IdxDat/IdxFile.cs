using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class IdxFile : FileChunk
    {
        public IdxMainHeader Header = new IdxMainHeader();
        public IdxPage Page = new IdxPage();
    }
}
