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

            Parser.DefaultDumpFormat = DumpFormat.Ascii;

            LocalFileHeader lfh;
            while ((lfh = zipFile.FileList.ReadOne(reader)) != null)  // (zipFile.FileList.HasData)
            {
                Parser.Dumper.NewItem();
                Parser.Dumper.OnInfo("LFH: " + lfh.Filename.Value);
                zipFile.FileData.Length = lfh.CompressedSize.Value;
                zipFile.FileData.Read(reader);
            }

            CentralFileHeader cfh = null;
            while ((cfh = zipFile.Directory.ReadOne(reader)) != null)
            {
                Parser.Dumper.NewItem();
                Parser.Dumper.OnInfo("CFH                : " + cfh.Filename.Value);
                Parser.Dumper.OnInfo("    Version Made By: " + cfh.VersionMadeBy());
                Parser.Dumper.OnInfo("    Version Needed : " + cfh.VersionNeeded());
            }

            zipFile.EndOfCentralDirectoryRecord.Read(reader);
        }
    }
}
