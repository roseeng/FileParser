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

        /// <summary>
        /// Get a byte. Throw ParserEOFException if unexpected EOF
        /// </summary>
        /// <returns>byte</returns>
        public byte GetByte()
        {
            var i = _stream.ReadByte();
            if (i == -1)
                throw new ParserEOFException();
            var b = Convert.ToByte(i);

            Parser.Write(b);

            return b;
        }

        /// <summary>
        /// Get a byte as int, -1 means EOF
        /// </summary>
        /// <returns>a byte as int</returns>
        public int GetByteUnsafe()
        {
            return _stream.ReadByte();
        }

        public long Position => _stream.Position;

        /// <summary>
        /// Store current position in the file
        /// </summary>
        public void SetMilestone()
        {
            _milestone = _stream.Position;
        }

        /// <summary>
        /// Rewind the file to last saved milestone
        /// </summary>
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
