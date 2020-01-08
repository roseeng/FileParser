﻿using System;
using System.Collections.Generic;
using System.Text;

using System.IO;

namespace FileParser
{
    public class Magic : ChunkField
    {
        byte[] _magic;
        public bool? IsValid = null;

        public Magic(byte[] magic)
        {
            _magic = magic;
        }

        public override void Read(FileReader rdr)
        {
            IsValid = true;
            var buf = new byte[_magic.Length];
            Parser.NewItem();

            for (int i = 0; i < _magic.Length; i++)
            {
                buf[i] = rdr.GetByte();
                if (buf[i] != _magic[i])
                    IsValid = false;
            }
            if (IsValid.HasValue && IsValid.Value)
            {
                if (Parser.DefaultDumpFormat == DumpFormat.Ascii)
                    Parser.WriteLine($"Magic: {AsAscii(_magic)}");
                else
                    Parser.WriteLine($"Magic: {AsHex(_magic)}");
            }
            else
            {
                var s = $"Bad Magic! Expected {AsHex(_magic)} ({AsAscii(_magic)}), got {AsHex(buf)} ({AsAscii(buf)})";
                throw new BadMagicException(s);
            }
        }

        private string AsAscii(byte[] bytes)
        {
            return Parser.AsAscii(bytes);
        }

        private string AsHex(byte[] bytes)
        {
            return Parser.AsHex(bytes);
        }

        public override void StartNew()
        {            
        }
    }
}
