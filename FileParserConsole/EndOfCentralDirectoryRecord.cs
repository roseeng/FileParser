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
        Magic Signature;
        Data16LE ThisDiskNumber;
        Data16LE CentralDirectoryDiskNumber;
        Data16LE EntriesInCDOnThisDisk;
        public Data16LE EntriesInCD;
        Data32LE CentralDirectorySize;
        Data32LE CentralDirectoryOffset;
        Data16LE FileCommentLen;
        public Chararray FileComment;

        public EndOfCentralDirectoryRecord()
        {
            Signature = new Magic(new byte[] { 0x50, 0x4b, 0x05, 0x06 });
            SetupChunkFields();

            AutomaticFields = new List<ChunkField>() { 
                Signature,
                ThisDiskNumber,
                CentralDirectoryDiskNumber, 
                EntriesInCDOnThisDisk,
                EntriesInCD,
                CentralDirectorySize,
                CentralDirectoryOffset,
                FileCommentLen
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            FileComment.Length = FileCommentLen.Value;
            FileComment.Read(rdr);
            Console.WriteLine("Comment: " + FileComment.Value);
        }
    }
}
