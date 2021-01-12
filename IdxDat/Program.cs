using System;
using System.Collections.Generic;
using System.Linq;
using FileParser;

using System.Diagnostics;
using DbWriter;
using System.Runtime.CompilerServices;
using System.Text;
using Microsoft.EntityFrameworkCore;

namespace IdxDat
{
    class Program
    {
        // https://github.com/miranda-ng/miranda-ng/blob/master/plugins/Import/docs/import-ICQ_Db_Specs.txt
        static void Main(string[] args)
        {
//            string filename = "2001_790171.dat";
            string filename = @"2000b\20030424\790171.dat";
            if (args.Count() > 0)
                filename = args[0];

            _context = new IcqContext();
            //var allan = _context.Messages.ToList();

            //ReadIdx();
            SearchDat(filename);
            //ParseDat();
        }

        static IcqContext _context;

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
        static void SearchDat(string filename)
        {
            Console.WriteLine($"Searching {filename} for valid entries...");

            // Statistics:
            HashSet<string> unhandled = new HashSet<string>();
            Dictionary<string, long> entryTypes = new Dictionary<string, long>();
            Dictionary<int, long> messageTypes = new Dictionary<int, long>();
            DateTime earliest = DateTime.MaxValue;
            DateTime latest = DateTime.MinValue;
            HashSet<string> properties = new HashSet<string>();
            int duplicateContacts = 0;
            int duplicateMessages = 0;

            var datFile = new DatFile();
            var rdr = new FileReader();

            Parser.DefaultDumpFormat = DumpFormat.Hex;
            //Parser.Debug = true;
            
            HexDumperConsole console = new HexDumperConsole();
            Parser.Dumper.Console = console;
 
            rdr.Open(filename);

            datFile.MainHeader.Read(rdr);

            FileImport fi = new FileImport() { Filename = filename, ImportDate = DateTime.Now };
            _context.FileImports.Add(fi);
            _context.SaveChanges();

            var fileImportId = fi.Id;

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
                                E0Entry entry = ((E0Entry)datFile.PolyChunk.CurrentChunk);
                                int mtype = entry.entrySubtype.Value;
                                messageTypes[mtype] = messageTypes.GetValueOrDefault(mtype) + 1;
                                if (entry.timestamp.Value < earliest) earliest = entry.timestamp.Value;
                                if (entry.timestamp.Value > latest) latest = entry.timestamp.Value;

                                var msg = ToMessage((E0Entry)datFile.PolyChunk.CurrentChunk);

                                if (_context.Messages.Any(m => m.Hash == msg.Hash))
                                { 
                                    duplicateMessages++; 
                                }
                                else
                                {
                                    msg.FileImportId = fileImportId;
                                    _context.Messages.Add(msg);
                                    _context.SaveChanges();
                                }
                            }

                            if (datFile.PolyChunk.CurrentType == typeof(E5Entry))
                            {
                                E5Entry e = (E5Entry)datFile.PolyChunk.CurrentChunk;

                                e.Properties.Keys.ToList().ForEach(p => properties.Add(p));

                                var ct = ToContact(e);

                                if (_context.Contacts.Any(c => c.Hash == ct.Hash))
                                {
                                    duplicateContacts++;
                                }
                                else
                                {
                                    foreach (var pv in e.Properties)
                                    {
                                        var ctp = new ContactProperty()
                                        {
                                            UIN = e.UIN,
                                            Name = pv.Key,
                                            Value = pv.Value,
                                        };
                                        _context.ContactProperties.Add(ctp);
                                    }

                                    ct.FileImportId = fileImportId;
                                    _context.Contacts.Add(ct);
                                    _context.SaveChanges();
                                }
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

                        string code = "Long";
                        entryTypes[code] = entryTypes.GetValueOrDefault(code) + 1;

                        int mtype = datFile.LongMessage.entrySubtype.Value;
                        messageTypes[mtype] = messageTypes.GetValueOrDefault(mtype) + 1;
                        
                        if (datFile.LongMessage.timestamp.Value < earliest) earliest = datFile.LongMessage.timestamp.Value;
                        if (datFile.LongMessage.timestamp.Value > latest) latest = datFile.LongMessage.timestamp.Value;

                        var msg = ToMessage(datFile.LongMessage);
                        if (_context.Messages.Any(m => m.Hash == msg.Hash))
                        {
                            duplicateMessages++;
                        }
                        else
                        {
                            msg.FileImportId = fileImportId;
                            _context.Messages.Add(msg);
                            _context.SaveChanges();
                        }

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

            StringBuilder sb = new StringBuilder();
            Console.WriteLine("");
            Console.WriteLine("Statistics for file: " + filename);
            sb.Append("Statistics for file: " + filename + Environment.NewLine);

            Console.WriteLine("");
            Console.WriteLine("Unhandled signatures: " + string.Join(", ", unhandled.ToArray()));
            sb.Append("Unhandled signatures: " + string.Join(", ", unhandled.ToArray()));

            Console.WriteLine("");
            Console.WriteLine("Duplicated Contacts: " + duplicateContacts);
            sb.Append("Duplicated Contacts: " + duplicateContacts);

            Console.WriteLine("");
            Console.WriteLine("Duplicated Messages: " + duplicateMessages);
            sb.Append("Duplicated Messages: " + duplicateMessages);

            Console.WriteLine("");
            Console.WriteLine("Earliest message: " + earliest.ToString("yyyy-MM-dd HH:mm:ss"));
            Console.WriteLine("Latest message  : " + latest.ToString("yyyy-MM-dd HH:mm:ss"));
            sb.Append("Latest message  : " + latest.ToString("yyyy-MM-dd HH:mm:ss") + "\n");
            sb.Append("Earliest message: " + earliest.ToString("yyyy-MM-dd HH:mm:ss") + "\n");

            Console.WriteLine("Entry types:\n" + entryTypes.Dump());
            sb.Append("Entry types:\n" + entryTypes.Dump());

            Console.WriteLine("");
            Console.WriteLine("Message types:\n" + messageTypes.Dump());
            sb.Append("Message types:\n" + messageTypes.Dump());

            Console.WriteLine("");
            Console.WriteLine("Contact properties: " + string.Join(", ", properties.ToArray()));

            fi.Statistics = sb.ToString();
            _context.Entry(fi).State = EntityState.Modified;
            _context.SaveChanges();
        }

        private static DbWriter.Contact ToContact(E5Entry entry)
        {
            /* About, Authorize, FirstName, GroupText, GroupText1, GroupText2, HomeAddress, HomeCell, HomeCity, HomeCountry, HomeFax, HomeHomepage, HomePhone, HomeState, HomeZipCode, 
             * InterestText, InterestText1, InterestText2, InterestText3, LastName, MyDefinedHandle, NickName, OfflineReminderDaysCounter, OfflineReminderLastTimeCounter, 
             * PastText, PastText1, PastText2, PrimaryEmail, TimeZone, UIN, WorkAddress, WorkCity, WorkCompany, WorkDepartment, WorkFax, WorkHomepage, WorkJobTitle, WorkPhone, WorkState, WorkZipCode, 
             * BirthDayReminderDays, ClientFeatures, TrueFeatures, OnlineAlert, Age, Gender, HomepageDescription, OldEmail, SecondEmail, IP, LastKnownUpdateDate, 
             * BirthDay, BirthMonth, BirthYear, InterestCategory, Language, Language1, PersistentUserShowIP, InterestCategory1, InterestCategory2, InterestCategory3, Language2, Occupation, 
             * GroupCategory, GroupCategory1, GroupCategory2, UserKind, LastOnlineTime, LastUpdateDate, AlreadyRemindedBirthday, AcceptInAway, OnlineAlertDisable, OnlineAlertFlg, 
             * UserSendByServer, WorkCountry, AdditionalEmails, LastMoreInfoUpdateDate, LastMoreStatusUpdateDate, PastCategory */
            var ct = new Contact()
            {
                UIN = entry.UIN,
                Nickname = entry.Nickname
            };

            ct.Hash = GetLongHash(ct.UIN, ct.Nickname);
            return ct;
        }

        public static DbWriter.Message ToMessage(E0Entry entry)
        {
            var msg = new DbWriter.Message()
            {
                Direction = (entry.sentOrReceived.Value == 0) ? Direction.From : Direction.To,
                UIN = entry.UIN.Value,
                Timestamp = entry.timestamp.Value,
                Text = entry.messageText.Value,
            };

            msg.Hash = GetLongHash(msg.Timestamp.Ticks, msg.Text);
            return msg;
        }

        public static DbWriter.Message ToMessage(LongMessage entry)
        {
            var msg = new DbWriter.Message()
            {
                Direction = (entry.sentOrReceived.Value == 0) ? Direction.From : Direction.To,
                UIN = entry.UIN.Value,
                Timestamp = entry.timestamp.Value,
                Text = entry.ansiText.Value,
            };

            msg.Hash = GetLongHash(msg.Timestamp.Ticks, msg.Text);
            return msg;
        }

        public static long GetLongHash(int h1, int h2)
        {
            return (long)h1 << 32 | (long)(uint)h2;
        }

        public static long GetLongHash(long t1, string s2)
        {
            long h2 = GetInt64HashCode(s2);
            return t1 ^ h2;
        }

        static Int64 GetInt64HashCode(string strText)
        {
            Int64 hashCode = 0;
            if (!string.IsNullOrEmpty(strText))
            {
                //Unicode Encode Covering all characterset
                byte[] byteContents = Encoding.Unicode.GetBytes(strText);
                System.Security.Cryptography.SHA256 hash =
                new System.Security.Cryptography.SHA256CryptoServiceProvider();
                byte[] hashText = hash.ComputeHash(byteContents);
                //32Byte hashText separate
                //hashCodeStart = 0~7  8Byte
                //hashCodeMedium = 8~23  8Byte
                //hashCodeEnd = 24~31  8Byte
                //and Fold
                Int64 hashCodeStart = BitConverter.ToInt64(hashText, 0);
                Int64 hashCodeMedium = BitConverter.ToInt64(hashText, 8);
                Int64 hashCodeEnd = BitConverter.ToInt64(hashText, 24);
                hashCode = hashCodeStart ^ hashCodeMedium ^ hashCodeEnd;
            }
            return (hashCode);
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
            
            /*
            Console.WriteLine("");
            Console.WriteLine("Entry types:");
            foreach (var entry in IdxListItem.EntryTypes)
                Console.WriteLine(entry.ToString());
            */

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

        public static string Dump<TKey, TValue>(this Dictionary<TKey, TValue> dictionary)
        {
            StringBuilder sb = new StringBuilder();

            foreach (var key in dictionary.Keys)
            {
                sb.Append(key.ToString());
                sb.Append(" : ");
                sb.Append(dictionary[key].ToString());
                sb.Append(Environment.NewLine);
            }

            return sb.ToString();
        }
    }
}
