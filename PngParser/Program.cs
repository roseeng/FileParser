using System;
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
                pngFile.GammaChunk = new gAMA();
                pngFile.PhysicalChunk = new pHYs();
                
                Parser.DefaultDumpFormat = DumpFormat.Ascii;

                reader.Open("jag-200x200.png");

                pngFile.FileMagic.Read(reader);
                 
                pngFile.Header.Read(reader);
                
                /*
                pngFile.GammaChunk.Read(reader);
                pngFile.PhysicalChunk.Read(reader);
                var text = new tEXt();
                text.Read(reader);
                var data1 = new IDAT();
                data1.Read(reader);
                var data2 = new IDAT();
                data2.Read(reader);
                var end = new IEND();
                end.Read(reader);
                */

                while (pngFile.Data.CurrentType != typeof(IEND))
                {
                    pngFile.Data.Read(reader);
                    pngFile.MapCurrentChunk();
                }

                Console.WriteLine("");
                Console.WriteLine($"Gamma is: {pngFile.GammaChunk?.Gamma?.Value}");
                Console.WriteLine($"PPI   is: {pngFile.PhysicalChunk?.PPUX?.Value}x{pngFile.PhysicalChunk?.PPUY?.Value}");
            }
            catch (BadMagicException ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
            catch (ParserEOFException)
            {
                Console.WriteLine("Unexpected Eod of File reached.");
            }
        }
    }
}
