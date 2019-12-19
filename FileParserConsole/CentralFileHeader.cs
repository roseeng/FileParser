using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace FileParserConsole
{
    public class CentralFileHeader : Chunk
    {
        /*
        central file header signature   4 bytes  (0x02014b50)
        version made by                 2 bytes
        version needed to extract       2 bytes
        general purpose bit flag        2 bytes
        compression method              2 bytes
        last mod file time              2 bytes
        last mod file date              2 bytes
        crc-32                          4 bytes
        compressed size                 4 bytes
        uncompressed size               4 bytes
        file name length                2 bytes
        extra field length              2 bytes
        file comment length             2 bytes
        disk number start               2 bytes
        internal file attributes        2 bytes
        external file attributes        4 bytes
        relative offset of local header 4 bytes

        file name (variable size)
        extra field (variable size)
        file comment (variable size)
        */
        Magic Signature;
        Data8 VersionMadeByMajor = new Data8();
        Data8 VersionMadeByMinor = new Data8();
        Data8 VersionNeededMajor = new Data8();
        Data8 VersionNeededMinor = new Data8();
        Data16LE BitFlag = new Data16LE();
        Data16LE Compression = new Data16LE();
        Data32LE CRC = new Data32LE();
        Data32LE CompressedSize = new Data32LE();
        Data32LE UncompressedSize = new Data32LE();
        Data16LE FilenameLen = new Data16LE();
        Data16LE ExtraFieldLen = new Data16LE();
        Data16LE FileCommentLen = new Data16LE();
        Data16LE DiskNumberStart = new Data16LE();
        Data16LE InternalFileAttributes = new Data16LE();
        Data32LE ExternalFileAttributes = new Data32LE();
        Data32LE RelativeOffsetOfLocalHeader = new Data32LE();

        public CentralFileHeader()
        {
            Signature = new Magic(new byte[] { 0x50, 0x4b, 0x01, 0x02 }); 
            Fields = new List<ChunkField>() { Signature,
                VersionMadeByMajor,
                VersionMadeByMinor,
                VersionNeededMajor,
                VersionNeededMinor,
                BitFlag,
                Compression,
                new Data16LE(),
                new Data16LE(),
                CRC,
                CompressedSize,
                UncompressedSize,
                FilenameLen,
                ExtraFieldLen,
                FileCommentLen,
                DiskNumberStart, 
                InternalFileAttributes, 
                ExternalFileAttributes, 
                RelativeOffsetOfLocalHeader
            };
        }

        public Chararray Filename = new Chararray();
        public Chararray ExtraField = new Chararray();
        public Chararray FileComment = new Chararray();

        public override void AfterRead(FileReader rdr)
        {
            Filename.Length = FilenameLen.Value;
            Filename.Read(rdr);
            Console.WriteLine("Filename: " + Filename.Value);

            ExtraField.Length = ExtraFieldLen.Value;
            ExtraField.Read(rdr);

            FileComment.Length = FileCommentLen.Value;
            FileComment.Read(rdr);
        }

        public string VersionMadeBy()
        {
            return (VersionMadeByMajor.Value / 10).ToString() + "." + (VersionMadeByMajor.Value % 10).ToString();
        }

        public string VersionNeeded()
        {
            return (VersionNeededMajor.Value / 10).ToString() + "." + (VersionNeededMajor.Value % 10).ToString();
        }
    }
}
