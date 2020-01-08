using System;

using FileParser;

namespace FileParserConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            var zipFile = new ZipFile();
            var reader = new FileReader();
            reader.Open("FileParser.zip");

            var dumper = new HexDumperClassic(reader);
            //Parser.dumper = dumper;
            Parser.DefaultDumpFormat = DumpFormat.Ascii;

            LocalFileHeader lfh;
            while ((lfh = zipFile.FileList.ReadOne(reader)) != null)  // (zipFile.FileList.HasData)
            {
                Parser.NewItem();
                Parser.WriteLine("LFH: " + lfh.Filename.Value);
                zipFile.FileData.Length = lfh.CompressedSize.Value;
                zipFile.FileData.Read(reader);
            }

            CentralFileHeader cfh = null;
            while ((cfh = zipFile.Directory.ReadOne(reader)) != null)
            {
                Parser.NewItem();
                Parser.WriteLine("CFH                : " + cfh.Filename.Value);
                Parser.WriteLine("    Version Made By: " + cfh.VersionMadeBy());
                Parser.WriteLine("    Version Needed : " + cfh.VersionNeeded());
            }

            zipFile.EndOfCentralDirectoryRecord.Read(reader);
        }
    }
}
