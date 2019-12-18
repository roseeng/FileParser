using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class Parser<T> where T : FileChunk, new()
    {
        public T f;
        public Parser()
        {
            f = new T();
        }

        FileReader _reader = null;
        public void Open(string filename)
        {
            _reader = new FileReader();
            _reader.Open(filename);
        }

        public void Read(Chunk c)
        {
            foreach (var f in c.Fields)
            {
                //Console.WriteLine("Reading a " + f.GetType().Name);
                f.Read(_reader);
            }

            c.AfterRead(_reader);
        }
    }
}
