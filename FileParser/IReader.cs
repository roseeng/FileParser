using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public interface IReader
    {
        Action<byte, long> OnByteRead { get; set; }

        /// <summary>
        /// Get a byte. Throw ParserEOFException if unexpected EOF
        /// </summary>
        /// <returns>byte</returns>
        byte GetByte();

        /// <summary>
        /// Get a byte as int, -1 means EOF
        /// </summary>
        /// <returns>a byte as int</returns>
        int GetByteUnsafe();
        
        long Position { get; }

        /// <summary>
        /// Store current position in the file
        /// </summary>
        void SetMilestone();

        /// <summary>
        /// Rewind the file to last saved milestone
        /// </summary>
        void GoToMilestone();

        void GoTo(long position);

    }
}
