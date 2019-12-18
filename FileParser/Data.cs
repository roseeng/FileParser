using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace FileParser
{
    public class Data8 : ChunkField
    {
        public byte Value;
        public override void Read(FileReader rdr)
        {
            byte b = rdr.GetByte();
            Value = b;
            Console.WriteLine("Byte: " + b.ToString());
        }
    }
    public class Data16LE : ChunkField
    {
        public UInt16 Value;
        public override void Read(FileReader rdr)
        {
            byte b0 = rdr.GetByte();
            byte b1 = rdr.GetByte();
            Value = Convert.ToUInt16(b1 * 256 + b0);
            Console.WriteLine("UInt16: " + Value.ToString());
        }
    }

    public class Data32LE : ChunkField
    {
        public UInt32 Value;
        public override void Read(FileReader rdr)
        {
            byte b0 = rdr.GetByte();
            byte b1 = rdr.GetByte();
            UInt16 i0 = Convert.ToUInt16(b1 * 256 + b0);
            b0 = rdr.GetByte();
            b1 = rdr.GetByte();
            UInt16 i1 = Convert.ToUInt16(b1 * 256 + b0);
            Value = Convert.ToUInt32(i1 * 65536 + i0);
            Console.WriteLine("UInt32: " + Value.ToString());
        }
    }

    public class Data16BE : ChunkField
    {
        public UInt16 Value;
        public override void Read(FileReader rdr)
        {
            byte b0 = rdr.GetByte();
            byte b1 = rdr.GetByte();
            Value = Convert.ToUInt16(b0 * 256 + b1);
            Console.WriteLine("UInt16: " + Value.ToString());
        }
    }

    public class Data32BE : ChunkField
    {
        public UInt32 Value;
        public override void Read(FileReader rdr)
        {
            byte b0 = rdr.GetByte();
            byte b1 = rdr.GetByte();
            UInt16 i0 = Convert.ToUInt16(b0 * 256 + b1);
            b0 = rdr.GetByte();
            b1 = rdr.GetByte();
            UInt16 i1 = Convert.ToUInt16(b0 * 256 + b1);
            Value = Convert.ToUInt32(i0 * 65536 + i1);
            Console.WriteLine("UInt32: " + Value.ToString());
        }
    }

    public class Chararray : ChunkField
    {
        public string Value;
        public int Length = 0;
        public override void Read(FileReader rdr)
        {
            Console.WriteLine($"Reading {Length} bytes");
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < Length; i++)
                sb.Append(Convert.ToChar(rdr.GetByte()));
            Value = sb.ToString();
            Console.WriteLine("String: " + Value);
        }
    }
}
