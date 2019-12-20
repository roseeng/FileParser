using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace FileParserConsole
{
    class ZipFile : FileChunk
    {
        /*
        https://pkware.cachefly.net/webdocs/casestudies/APPNOTE.TXT

      [local file header 1]
      [encryption header 1]
      [file data 1]
      [data descriptor 1]
      . 
      .
      .
      [local file header n]
      [encryption header n]
      [file data n]
      [data descriptor n]
      [archive decryption header] 
      [archive extra data record] 
      [central directory header 1]
      .
      .
      .
      [central directory header n]
      [zip64 end of central directory record]
      [zip64 end of central directory locator] 
      [end of central directory record]
        */
        public ChunkList<LocalFileHeader> FileList = new ChunkList<LocalFileHeader>(ChunkListRepeat.ByMagic);

        public ChunkList<CentralFileHeader> Directory = new ChunkList<CentralFileHeader>(ChunkListRepeat.ByMagic);

        public EndOfCentralDirectoryRecord EndOfCentralDirectoryRecord = new EndOfCentralDirectoryRecord();
    }
}
