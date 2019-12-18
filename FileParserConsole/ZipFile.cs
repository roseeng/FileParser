using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace FileParserConsole
{
    class ZipFile : FileChunk
    {
        public LocalFileHeader LocalFileHeader = new LocalFileHeader();

        public Chunk TableOfContents = new Chunk() { 
            Position = new Position() { Type = Position.TypeEnum.RelativeToEOF },
            Size = new Size() { Type = Size.TypeEnum.Calculated }
        };
    }
}
