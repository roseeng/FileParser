using System;
using FileParser;

namespace IdxDat
{
    class Program
    {
        // https://github.com/miranda-ng/miranda-ng/blob/master/plugins/Import/docs/import-ICQ_Db_Specs.txt
        static void Main(string[] args)
        {
            //ReadIdx();
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
            /*
            while (true)
            {
                datFile.PageHeader.Read(rdr);

                while (true)
                {
                    var pos = rdr.Position;

                    Data32LE length = new Data32LE();
                    length.Read(rdr);

                    Data32LE filed = new Data32LE();
                    filed.Read(rdr);

                    Data32LE entry = new Data32LE();
                    entry.Read(rdr);
                    Parser.Dumper.OnInfo($"Length {length.Value}, Entry {entry.Value}");
                    rdr.GoTo(pos + length.Value);
                }

                if (datFile.PageHeader.Next.Value == 0xFFFFFFFF)
                    break;

                rdr.GoTo(datFile.PageHeader.Next.Value);
            }
            */
            
            byte prev0 = 0;
            byte prev1 = 0;
            long ix = 0;

            while (true)
            {
                Data8 d = new Data8();
                d.Read(rdr);
                if (prev0 == 0x23 && d.Value == 0xA3)
                {
                    Parser.Dumper.OnInfo("Found sig with code: " + prev1.ToString("X2"));                    

                    if (prev1 == 0xE0)
                    {
                        var pos = rdr.Position;
                        rdr.GoTo(pos - (4 + 4 + 4 + 3));

                        var entry = new E0Entry();
                        entry.Read(rdr);
                    }

                    if (prev1 == 0xE5)
                    {
                        var pos = rdr.Position;
                        rdr.GoTo(pos - (4 + 4 + 4 + 3));

                        var entry = new E5Entry();
                        entry.Read(rdr);
                    }

                    if (prev1 == 0xE7)
                    {
                        var pos = rdr.Position;
                        rdr.GoTo(pos - (4 + 4 + 4 + 3));

                        var entry = new E7Entry();
                        entry.Read(rdr);
                    }

                    /*
                    Data32LE length = new Data32LE();
                    length.Read(rdr);

                    Data32LE filed = new Data32LE();
                    filed.Read(rdr);

                    Data32LE entry = new Data32LE();
                    entry.Read(rdr);

                    Data8 sig = new Data8();
                    sig.Read(rdr);

                    Magic magic = new Magic(new byte[] { 0x23, 0xA3, 0xDB, 0xDF, 0xB8, 0xD1, 0x11, 0x8A, 0x65, 0x00, 0x60, 0x08, 0x71, 0xA3, 0x91 });
                    magic.Read(rdr);

                    Chararray data = new Chararray();
                    data.Length = length.Value - (4 + 4 + 4 + 16);
                    data.Read(rdr);
                    */
                    int a = 1;
                }

                // Go on scanning
                prev1 = prev0;
                prev0 = d.Value;
                ix++;

                if (ix % 256 == 0)
                {
                    Parser.Dumper.OnInfo("");
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

            while (true)
            {
                idxFile.Page.Read(reader);
                Parser.Dumper.OnInfo("New page");
            }

            /*
            idxFile.Page.Read(reader);
            Parser.Dumper.OnInfo("New page");
            idxFile.Page.Read(reader);
            Parser.Dumper.OnInfo("New page");
            idxFile.Page.Read(reader);
            Parser.Dumper.OnInfo("New page");
            */
            Console.WriteLine("");
            Console.WriteLine("Entry types:");
            foreach (var entry in IdxListItem.EntryTypes)
                Console.WriteLine(entry.ToString());


            /*
            Chararray dummy = new Chararray();
            dummy.Length = 32;
            dummy.Read(reader);
            */
        }
    }
}
