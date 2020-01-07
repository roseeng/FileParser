using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace FileParserConsole
{
    /// <summary>
    /// The header of a Zip
    /// </summary>
    public class LocalFileHeader : Chunk
    {
        /*
              local file header signature     4 bytes  (0x04034b50)
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

              file name (variable size)
              extra field (variable size)        
        */
        Magic Signature;
        Data8 VersionNeededMajor;
        Data8 VersionNeededMinor;
        public Data16LE BitFlag;
        public Data16LE Compression;
        public Data32LE CRC;
        public Data32LE CompressedSize;
        public Data32LE UncompressedSize;
        Data16LE FilenameLen;
        Data16LE ExtraFieldLen;
        public Chararray Filename;
        public Chararray ExtraField;

        public LocalFileHeader()
        {
            Signature = new Magic(new byte[]{ 0x50, 0x4b, 0x03, 0x04 });
            SetupChunkFields();

            AutomaticFields = new List<ChunkField>() { 
                Signature, 
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
                ExtraFieldLen
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            Filename.Length = FilenameLen.Value;
            Filename.Read(rdr);
            Console.WriteLine("Filename: " + Filename.Value);
            ExtraField.Length = ExtraFieldLen.Value;
            ExtraField.Read(rdr);
        }

        public string VersionNeeded()
        {
            return (VersionNeededMajor.Value / 10).ToString() + "." + (VersionNeededMajor.Value % 10).ToString();
        }
    }
}
