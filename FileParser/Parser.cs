using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class Parser 
    {
        static Parser()
        {
            Dumper = new FileDumper();
        }

        public static FileDumper Dumper { get; } 

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

    }
 
    public enum DumpFormat
    {
        Ascii,
        Decimal, 
        Hex
    }
}
