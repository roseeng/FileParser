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

        public override void StartNew()
        {
            Value = 0;
        }

    }

    public class Data16LE : ChunkField
    {
        public UInt16 Value;
        public override void Read(FileReader rdr)
        {
            var buf = new byte[2];
            buf[0] = rdr.GetByte();
            buf[1] = rdr.GetByte();
            Value = BitConverter.ToUInt16(buf, 0);
            Console.WriteLine("UInt16: " + Value.ToString());
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class Data32LE : ChunkField
    {
        public UInt32 Value;
        public override void Read(FileReader rdr)
        {
            var buf = new byte[4];
            buf[0] = rdr.GetByte();
            buf[1] = rdr.GetByte();
            buf[2] = rdr.GetByte();
            buf[3] = rdr.GetByte();
            Value = BitConverter.ToUInt32(buf, 0);

            Console.WriteLine("UInt32: " + Value.ToString());
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class Data16BE : ChunkField
    {
        public UInt16 Value;
        public override void Read(FileReader rdr)
        {
            var buf = new byte[2];
            buf[1] = rdr.GetByte();
            buf[0] = rdr.GetByte();
            Value = BitConverter.ToUInt16(buf, 0);
            Console.WriteLine("UInt16: " + Value.ToString());
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class Data32BE : ChunkField
    {
        public UInt32 Value;
        public override void Read(FileReader rdr)
        {
            var buf = new byte[4];
            buf[3] = rdr.GetByte();
            buf[2] = rdr.GetByte();
            buf[1] = rdr.GetByte();
            buf[0] = rdr.GetByte();
            Value = BitConverter.ToUInt32(buf, 0);
            Console.WriteLine("UInt32: " + Value.ToString());
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class Chararray : ChunkField
    {
        public string Value;
        public UInt32 Length = 0;

        public override void Read(FileReader rdr)
        {
            Console.WriteLine($"Chararray Reading {Length} bytes");
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < Length; i++)
                sb.Append(Convert.ToChar(rdr.GetByte()));
            Value = sb.ToString();
        }

        public override void StartNew()
        {
            Value = null;
            Length = 0;
        }
    }
}
