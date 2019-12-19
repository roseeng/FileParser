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
            try
            {
                while (true)
                {
                    reader.SetMilestone();
                    lfh = zipFile.FileList.ReadOne(reader);
                }
            }
            catch (BadMagicException) 
            {
                reader.GoToMilestone();
            }
            CentralFileHeader cfh = new CentralFileHeader();
            cfh.Read(reader);
            Console.WriteLine("Version Made By: " + cfh.VersionMadeBy());
            Console.WriteLine("Version Needed: " + cfh.VersionNeeded());
        }
    }
}
