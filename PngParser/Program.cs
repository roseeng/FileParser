﻿using System;
using FileParser;

namespace PngParser
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            try
            {
                var pngFile = new PngFile();
                var reader = new FileReader();

                var dumper = new HexDumperClassic(reader);
                Parser.dumper = dumper;
                Parser.DefaultDumpFormat = DumpFormat.Ascii;

                reader.Open("jag-200x200.png");

                pngFile.FileMagic.Read(reader);
                pngFile.Header.Read(reader);
                     
                /*
                pngFile.Gamma.Read(reader);
                pngFile.Physical.Read(reader);
                pngFile.Palette.Read(reader);
                //tEXt
                */

                pngFile.Data.Read(reader);
                //Console.WriteLine("Found: " + pngFile.Data.Type.Name);

                pngFile.Data.Read(reader);
                //Console.WriteLine("Found: " + pngFile.Data.Type.Name);

                pngFile.Data.Read(reader);
                //Console.WriteLine("Found: " + pngFile.Data.Type.Name);

                pngFile.Data.Read(reader);
                //Console.WriteLine("Found: " + pngFile.Data.Type.Name);
            }
            catch (BadMagicException ex)
            {
                Parser.WriteLine("Error: " + ex.Message);
            }
        }
    }
}
