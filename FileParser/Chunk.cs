using System;
using System.Collections.Generic;
using System.Text;

using System.IO;

namespace FileParser
{
    public class Chunk
    {
        public Position Position;
        public Size Size;

        public List<ChunkField> Fields;

        public virtual void AfterRead(FileReader rdr)
        { }
    }

    public abstract class ChunkField
    {
        public abstract void Read(FileReader rdr);
    }
}
