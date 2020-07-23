using System;
using System.Collections.Generic;
using System.Text;

using System.IO;

namespace FileParser
{
    public sealed class MemoryReader : IReader
    {
        private byte[] _buffer;
        private long _position;
        private long _milestone = 0;

        public void Open(byte[] buffer)
        {
            _buffer = buffer;
            _position = 0;
        }

        public Action<byte, long> OnByteRead { get; set; }

        /// <summary>
        /// Get a byte. Throw ParserEOFException if unexpected EOF
        /// </summary>
        /// <returns>byte</returns>
        public byte GetByte()
        {
            if (_position >= _buffer.Length)
                throw new ParserEOFException();
            var b = _buffer[_position];

            Parser.Dumper.OnByte(b, _position);

            if (OnByteRead != null)
                OnByteRead(b, _position);
            
            _position++;
            return b;
        }

        /// <summary>
        /// Get a byte as int, -1 means EOF
        /// </summary>
        /// <returns>a byte as int</returns>
        public int GetByteUnsafe()
        {
            if (_position >= _buffer.Length)
                return -1;

            var b = _buffer[_position];

            Parser.Dumper.OnByte(b, _position);

            if (OnByteRead != null)
                OnByteRead(b, _position);

            ++_position;
            return (int)b;
        }

        public long Position => _position;

        /// <summary>
        /// Store current position in the file
        /// </summary>
        public void SetMilestone()
        {
            _milestone = _position;
        }

        /// <summary>
        /// Rewind the file to last saved milestone
        /// </summary>
        public void GoToMilestone()
        {
            _position = _milestone;
            Parser.Dumper.NewItem();
        }

        public void GoTo(long position)
        {
            _position = position;
            Parser.Dumper.NewItem();
        }
    }
}
