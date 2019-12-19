using System;
using System.Collections.Generic;
using System.Text;

using System.IO;

namespace FileParser
{
    public sealed class FileReader : IDisposable
    {
        private FileStream _stream;
        private long _milestone = 0;

        public void Open(string filename)
        {
            _stream = new FileStream(filename, FileMode.Open);
        }

        public byte GetByte()
        {
            var i = _stream.ReadByte();
            if (i == -1)
                throw new ParserEOFException();
            return Convert.ToByte(i);
        }

        public int GetByteUnsafe()
        {
            return _stream.ReadByte();
        }

        public void SetMilestone()
        {
            _milestone = _stream.Position;
        }

        public void GoToMilestone()
        {
            _stream.Position = _milestone;
        }

        public void Dispose()
        {
            if (_stream != null)
                _stream.Close();
        }
    }
}
