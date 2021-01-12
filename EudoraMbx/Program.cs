﻿using System;
using FileParser;

using System.IO;

namespace EudoraMbx
{
    class Program
    {
        static void Main(string[] args)
        {
            Program p = new Program();
            p.Parsefiles(args[0]);
        }

        public void Parsefiles(string mailboxname)
        {
            Console.WriteLine($"Parsing mailbox {mailboxname}");

            var tocfilename = mailboxname + ".toc";
            if (!File.Exists(tocfilename))
                throw new ApplicationException("File not found: " + tocfilename);

            var mbxfilename = mailboxname + ".mbx";
            if (!File.Exists(mbxfilename))
                throw new ApplicationException("File not found: " + mbxfilename);

            var tocFile = new TocFile();
            var rdr = new FileReader();

            Parser.DefaultDumpFormat = DumpFormat.Hex;
            //Parser.Debug = true;

            HexDumperConsole console = new HexDumperConsole();
            Parser.Dumper.Console = console;

            rdr.Open(tocfilename);
            tocFile.Header.Read(rdr);
        }
    }
}