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

            LocalFileHeader lfh;
            while ((lfh = zipFile.FileList.ReadOne(reader)) != null)  // (zipFile.FileList.HasData)
            {
                Console.WriteLine("LFH: " + lfh.Filename.Value);
            }

            CentralFileHeader cfh = null;
            while ((cfh = zipFile.Directory.ReadOne(reader)) != null)
            {
                Console.WriteLine("CFH                : " + cfh.Filename.Value);
                Console.WriteLine("    Version Made By: " + cfh.VersionMadeBy());
                Console.WriteLine("    Version Needed : " + cfh.VersionNeeded());
            }

            zipFile.EndOfCentralDirectoryRecord.Read(reader);
        }
    }
}
