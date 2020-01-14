using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class Parser 
    {
        public static HexDumperClassic dumper { get; set; } // TODO: Change to interface when more complete

        public static void Write(byte b)
        {
            dumper?.OnByte(b);
        }
                
        public static void WriteLine(string s, [System.Runtime.CompilerServices.CallerFilePath] string filepath = "")
        {
            var memberName = System.IO.Path.GetFileNameWithoutExtension(filepath);
            dumper?.WriteLine($"{s} ({memberName})");
        }

        public static void NewItem()
        {
            dumper?.NewItem();
        }

        public static DumpFormat DefaultDumpFormat = DumpFormat.Hex;

        public static string AsAscii(byte[] bytes)
        {
            byte[] safe = new byte[bytes.Length];

            for (int i = 0; i < bytes.Length; i++)
                if (IsPrintable(bytes[i]))
                    safe[i] = bytes[i];
                else
                    safe[i] = 46; // Dot

            return Encoding.ASCII.GetString(safe);
        }

        public static bool IsPrintable(byte b)
        {
            // Range of chars from space till ~ (tilda)
            return b >= 32 && b < 126;
        }

        public static string AsHex(byte[] bytes)
        {
            return BitConverter.ToString(bytes);
        }

        public static bool Debug { get; set; } = false;

        // ---
        /*
        public FileReader Reader { get { return _reader; } }

        FileReader _reader = null;
        public void Open(string filename)
        {
            _reader = new FileReader();
            _reader.Open(filename);
        }

        public void Read(Chunk c)
        {
            c.Read(_reader);
            c.AfterAutomaticRead(_reader);
        }
        */
    }
 
    public enum DumpFormat
    {
        Ascii,
        Decimal, 
        Hex
    }
}
