using System;
using System.Collections.Generic;
using System.Linq;
using FileParser;

using System.Linq;
using System.Diagnostics;

namespace IdxDat
{
    class Program
    {
        // https://github.com/miranda-ng/miranda-ng/blob/master/plugins/Import/docs/import-ICQ_Db_Specs.txt
        static void Main(string[] args)
        {
            //ReadIdx();
            //SearchDat();
            ParseDat();
        }

        /// <summary>
        /// Open a DAT file and try to parse it according to the spec
        /// </summary>
        static void ParseDat()
        {
            var datFile = new DatFile();
            var rdr = new FileReader();

            Parser.DefaultDumpFormat = DumpFormat.Hex;
            //Parser.Debug = true;

            HexDumperConsole console = new HexDumperConsole();
            Parser.Dumper.Console = console;
            console.DefaultColor = ConsoleColor.Green;

            rdr.Open("2003_790171.dat");

            datFile.MainHeader.Read(rdr);

            try
            {
                while (true)
                {
                    datFile.PageHeader.Read(rdr);
                    datFile.ReadPage(rdr, console);

                    if (rdr.Position != datFile.PageHeader.Next.Value)
                    {
                        Console.WriteLine("\n...\n--- JUMPING ---\n");
                        rdr.GoTo(datFile.PageHeader.Next.Value);
                    }
                }
            }
            catch (ParserEOFException)
            {
                Parser.Dumper.OnInfo("End of file.");
            }


            // Try parsing a page
            ProbeEntry entry = new ProbeEntry();
            bool lastSigValid = false;

            while (true)
            {
                if (!lastSigValid)
                {
                    (long start, long length) = FindSig(rdr);
                    console.ColorSpans.Add( new ColorSpan(ConsoleColor.Green, start, start+length));
                }

                try
                {
                    entry.BeforeAutomaticRead(rdr);
                    entry.ReadAutomatic(rdr);
                    entry.AfterAutomaticRead(rdr);
                    lastSigValid = true;

                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                    lastSigValid = false;
                    var delta = entry.startPos + entry.length.Value - 4 - rdr.Position;
                    if (delta < 0)
                    {
                        Parser.Dumper.OnInfo($"Negative jump on length: {delta} bytes.");
                    }
                    else if (delta > 100)
                    {
                        Parser.Dumper.OnInfo($"Jump on length too long: {delta} bytes.");
                    }
                    else
                    {
                        entry.diffdata.Length = (uint)delta;
                        entry.diffdata.Read(rdr);
                    }
                }
            }
        }

        /// <summary>
        /// Scan a DAT file and look for signatures
        /// </summary>
        static void SearchDat()
        {
            // Statistics:
            HashSet<string> unhandled = new HashSet<string>();
            Dictionary<string, long> entryTypes = new Dictionary<string, long>();
            Dictionary<int, long> messageTypes = new Dictionary<int, long>();

            var datFile = new DatFile();
            var rdr = new FileReader();

            Parser.DefaultDumpFormat = DumpFormat.Hex;
            //Parser.Debug = true;
            
            HexDumperConsole console = new HexDumperConsole();
            Parser.Dumper.Console = console;
 
            rdr.Open("2003_790171.dat");

            datFile.MainHeader.Read(rdr);
            
            byte prev0 = 0;
            byte prev1 = 0;
            long ix = 0;

            //rdr.GoTo(0x265280);
            //console.ColorSpan = new ColorSpan(ConsoleColor.Green, 0x265290, 0x265290 + 4 + 146);

            try
            {
                while (true)
                {
                    Data8 d = new Data8();
                    d.Read(rdr);

                    if (prev0 == 0x23 && d.Value == 0xA3)
                    {
                        string code = prev1.ToString("X2");
                        Parser.Dumper.OnInfo($"Found sig with code: {code}");
                        entryTypes[code] = entryTypes.GetValueOrDefault(code) + 1;

                        if (datFile.ValidSigs.Contains(prev1))
                        {
                            var pos = rdr.Position;
                            rdr.GoTo(pos - (4 + 4 + 4 + 3));

                            datFile.PolyChunk.Read(rdr);

                            if (datFile.PolyChunk.CurrentType == typeof(E0Entry))
                            {
                                int mtype = ((E0Entry)datFile.PolyChunk.CurrentChunk).entrySubtype.Value;
                                messageTypes[mtype] = messageTypes.GetValueOrDefault(mtype) + 1;
                            }

                            prev0 = prev1 = 0;
                            d.StartNew();
                        }
                        else
                        {
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

                        int mtype = datFile.LongMessage.entrySubtype.Value;
                        messageTypes[mtype] = messageTypes.GetValueOrDefault(mtype) + 1;

                        prev0 = prev1 = 0;
                        d.StartNew();
                    }

                    // Go on scanning
                    prev1 = prev0;
                    prev0 = d.Value;
                    ix++;

                    if (ix % 256*16 == 0)
                    {
                        Parser.Dumper.OnInfo("");
                    }
                }
            }
            catch (ParserEOFException)
            {
                Parser.Dumper.OnInfo("End of file.");
            }
            catch (Exception ex)
            {
                Parser.Dumper.OnInfo("Unhandled Exception: " + ex.Message);
            }

            Console.WriteLine("");
            Console.WriteLine("Unhandled signatures: " + string.Join(", ", unhandled.ToArray()));

            Console.WriteLine("");
            Console.WriteLine("Entry types:");
            entryTypes.Dump();

            Console.WriteLine("");
            Console.WriteLine("Message types:");
            messageTypes.Dump();
        }

        public static (long, long) FindSig(IReader rdr)
        {
            byte prev0 = 0;
            byte prev1 = 0;
            long ix = 0;
            long start;
            Data32LE length = new Data32LE();

            while (true)
            {
                Data8 d = new Data8();
                d.Read(rdr);

                if (prev0 == 0x23 && d.Value == 0xA3)
                {
                    string code = prev1.ToString("X2");
                    Parser.Dumper.OnInfo($"Found sig with code: {code}");

                    var pos = rdr.Position;
                    start = pos - (4 + 4 + 4 + 3); // Lenght, Filing, Type + 3 bytes from signature
                    rdr.GoTo(start);
                    
                    length.Read(rdr);
                    rdr.GoTo(start);

                    return (start, length.Value);
                }

                if (prev1 == 0x50 && prev0 == 0x3B && d.Value == 0xC1)
                {
                    Parser.Dumper.OnInfo($"Found sig for Long Message format");

                    var pos = rdr.Position;
                    start = pos - (4 + 4 + 4 + 3); // Lenght, Filing, Type + 3 bytes from signature
                    rdr.GoTo(start);

                    length.Read(rdr);
                    rdr.GoTo(start);

                    return (start, length.Value);
                }

                // Go on scanning
                prev1 = prev0;
                prev0 = d.Value;
                ix++;

                if (ix % 256 * 16 == 0)
                {
                    Parser.Dumper.OnInfo("");
                }
            }
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

    public static class ExtensionMethods
    {
        public static TValue GetValueOrDefault<TKey, TValue>(this Dictionary<TKey, TValue> dictionary, TKey key, TValue defaultValue = default(TValue)) 
            => dictionary.TryGetValue(key, out var value) ? value : defaultValue;

        public static void Dump<TKey, TValue>(this Dictionary<TKey, TValue> dictionary)
        {
            foreach (var key in dictionary.Keys)
            {
                Console.Write(key.ToString());
                Console.Write(" : ");
                Console.WriteLine(dictionary[key].ToString());
            }
        }
    }
}
