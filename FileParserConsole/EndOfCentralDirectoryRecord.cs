using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace FileParserConsole
{
    public class EndOfCentralDirectoryRecord : Chunk
    {
        /*
          end of central dir signature    4 bytes  (0x06054b50)
          number of this disk             2 bytes
          number of the disk with the
          start of the central directory  2 bytes
          total number of entries in the
          central directory on this disk  2 bytes
          total number of entries in
          the central directory           2 bytes
          size of the central directory   4 bytes
          offset of start of central
          directory with respect to
          the starting disk number        4 bytes
          .ZIP file comment length        2 bytes
          .ZIP file comment       (variable size)
        */
    }
}
