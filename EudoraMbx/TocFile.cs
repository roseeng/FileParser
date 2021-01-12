using System;
using System.Collections.Generic;
using System.Text;
using FileParser;

namespace EudoraMbx
{
    public class TocFile : FileChunk
    {
        public FileHeaderBlock Header = new FileHeaderBlock();
    }
}
