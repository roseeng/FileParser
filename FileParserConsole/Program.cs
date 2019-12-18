using System;

using FileParser;

namespace FileParserConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            var parser = new Parser<ZipFile>();
            parser.Open("FileParser.zip");
            parser.Read(parser.f.LocalFileHeader);
            parser.Read(new LocalFileHeader());
            parser.Read(new LocalFileHeader());
            Console.WriteLine("Version Needed: " + parser.f.LocalFileHeader.VersionNeeded());
        }
    }
}
