using System;
using System.Collections.Generic;
using System.Text;

using System.IO;

namespace FileParser
{
    public sealed class FileReader : IDisposable
    {
        private FileStream _stream;
        //private Parser _parser;
        public void Open(string filename)
        {
            _stream = new FileStream(filename, FileMode.Open);
        }

        public byte GetByte()
        {
            var i = _stream.ReadByte();
            if (i == -1)
                throw new ApplicationException("Premature EOF");
            return Convert.ToByte(i);
        }

        public int GetByteUnsafe()
        {
            return _stream.ReadByte();
        }

        public void Dispose()
        {
            if (_stream != null)
                _stream.Close();
        }
    }
}
