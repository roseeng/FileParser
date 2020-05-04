using System;
using FileParser;

namespace IdxDat
{
    class Program
    {
        // https://github.com/miranda-ng/miranda-ng/blob/master/plugins/Import/docs/import-ICQ_Db_Specs.txt
        static void Main(string[] args)
        {
            ReadDat();
        }

        static void ReadDat()
        {
            Console.WriteLine("Hello World!");

            var datFile = new DatFile();
            var rdr = new FileReader();

            Parser.DefaultDumpFormat = DumpFormat.Ascii;

            rdr.Open("2001_790171.dat");

            datFile.Header.Read(rdr);
            //datFile.Page.Read(reader);

            while (true)
            {
                Data8 d = new Data8();
                d.Read(rdr);
                if (d.Value == 0x23)
                {
                    d.Read(rdr);
                    if (d.Value == 0xA3)
                    {
                        for (int i = 0; i < 13; i++)
                            d.Read(rdr);
                        Parser.Dumper.OnInfo("Tralala");
                    }
                }
            }
            /*
                Chararray dummy = new Chararray();
                dummy.Length = 16;
                dummy.Read(reader);
            */
        }

        static void ReadIdx()
        { 
            Console.WriteLine("Hello World!");

            var idxFile = new IdxFile();
            var reader = new FileReader();

            Parser.DefaultDumpFormat = DumpFormat.Ascii;

            reader.Open("2001_790171.idx");

            idxFile.Header.Read(reader);
            Parser.Dumper.OnInfo("Version: " + idxFile.Header.Version.Value);

            idxFile.Page.Read(reader);
            Parser.Dumper.OnInfo("New page");
            idxFile.Page.Read(reader);
            Parser.Dumper.OnInfo("New page");
            idxFile.Page.Read(reader);
            Parser.Dumper.OnInfo("New page");
            idxFile.Page.Read(reader);
            Parser.Dumper.OnInfo("New page");

            /*
            Chararray dummy = new Chararray();
            dummy.Length = 32;
            dummy.Read(reader);
            */
        }
    }
}
