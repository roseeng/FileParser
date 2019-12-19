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
        public void StartNew()
        {
            foreach (var f in Fields)
                f.StartNew();
        }

        public virtual void AfterRead(FileReader rdr)
        { }

        public void Read(FileReader rdr)
        {
            foreach (var f in Fields)
            {
                //Console.WriteLine("Reading a " + f.GetType().Name);
                f.Read(rdr);
            }
        }
    }

    public abstract class ChunkField
    {
        public abstract void StartNew();
        public abstract void Read(FileReader rdr);
    }

    public class ChunkList<T> where T : Chunk, new()
    {
        private T _chunk;

        public ChunkList()
        {
            _chunk = new T();
        }
        public T ReadOne(FileReader rdr)
        {
            _chunk.StartNew();
            _chunk.Read(rdr);
            _chunk.AfterRead(rdr);
            return _chunk;
        }
    }
}
