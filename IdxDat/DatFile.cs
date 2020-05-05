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
    }
}
