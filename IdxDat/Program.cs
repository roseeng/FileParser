using System;
using System.Collections.Generic;
using System.Linq;
using FileParser;

using System.Linq;

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
            HashSet<string> unhandled = new HashSet<string>();

            var datFile = new DatFile();
            var rdr = new FileReader();

            Parser.DefaultDumpFormat = DumpFormat.Ascii;
            Parser.Debug = true;

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

            try
            {
                while (true)
                {
                    Data8 d = new Data8();
                    d.Read(rdr);

                    if (prev0 == 0x23 && d.Value == 0xA3)
                    {
                        Parser.Dumper.OnInfo("Found sig with code: " + prev1.ToString("X2"));

                        if (datFile.ValidSigs.Contains(prev1))
                        {
                            var pos = rdr.Position;
                            rdr.GoTo(pos - (4 + 4 + 4 + 3));

                            datFile.PolyChunk.Read(rdr);

                            prev0 = prev1 = 0;
                            d.StartNew();
                        }
                        else
                        {
                            string code = prev1.ToString("X2");
                            if (!unhandled.Contains(code))
                            {
                                unhandled.Add(code);
                                Parser.Dumper.OnInfo("Unhandled signatures: " + string.Join(", ", unhandled.ToArray()));
                            }
                        }
                    }

                    if (prev1 == 0x50 && prev0 == 0x3B && d.Value == 0xC1)
                    {
                        // Long message format
                        var pos = rdr.Position;
                        rdr.GoTo(pos - (4 + 4 + 4 + 3));

                        datFile.LongMessage.Read(rdr);

                        prev0 = prev1 = 0;
                        d.StartNew();
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
            }
            catch (ParserEOFException)
            {
                Parser.Dumper.OnInfo("End of file."));
            }
            catch (Exception ex)
            {
                Parser.Dumper.OnInfo("Unhandled Exception: " + ex.Message);
            }

            Parser.Dumper.OnInfo("Unhandled signatures: " + string.Join(", ", unhandled.ToArray()));
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
