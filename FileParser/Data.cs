using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text;

namespace FileParser
{
    public class Data8 : ChunkField
    {
        public byte Value;
        public override void Read(IReader rdr)
        {
            byte b = rdr.GetByte();
            Value = b;
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class Data16LE : ChunkField
    {
        public UInt16 Value;
        public override void Read(IReader rdr)
        {
            var buf = new byte[2];
            buf[0] = rdr.GetByte();
            buf[1] = rdr.GetByte();
            Value = BitConverter.ToUInt16(buf, 0);
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class Data32LE : ChunkField
    {
        public UInt32 Value;
        public override void Read(IReader rdr)
        {
            var buf = new byte[4];
            buf[0] = rdr.GetByte();
            buf[1] = rdr.GetByte();
            buf[2] = rdr.GetByte();
            buf[3] = rdr.GetByte();
            Value = BitConverter.ToUInt32(buf, 0);
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class SignedData32LE : ChunkField
    {
        public Int32 Value;
        public override void Read(IReader rdr)
        {
            var buf = new byte[4];
            buf[0] = rdr.GetByte();
            buf[1] = rdr.GetByte();
            buf[2] = rdr.GetByte();
            buf[3] = rdr.GetByte();
            Value = BitConverter.ToInt32(buf, 0);
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class Data16BE : ChunkField
    {
        public UInt16 Value;
        public override void Read(IReader rdr)
        {
            var buf = new byte[2];
            buf[1] = rdr.GetByte();
            buf[0] = rdr.GetByte();
            Value = BitConverter.ToUInt16(buf, 0);
        }

        public override void StartNew()
        {
            Value = 0;
        }
    }

    public class Data32BE : ChunkField
    {
        public UInt32 Value;
        public override void Read(IReader rdr)
        {
            var buf = new byte[4];
            buf[3] = rdr.GetByte();
            buf[2] = rdr.GetByte();
            buf[1] = rdr.GetByte();
            buf[0] = rdr.GetByte();
            Value = BitConverter.ToUInt32(buf, 0);
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

        public override void Read(IReader rdr)
        {
            //Console.WriteLine($"Chararray Reading {Length} bytes");
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < Length; i++)
            {
                var b = rdr.GetByte();
                if (Parser.IsPrintable(b))
                    sb.Append(Convert.ToChar(b));
                else
                    sb.Append(".");
            }
            Value = sb.ToString();
        }

        public override void StartNew()
        {
            Value = null;
        }
    }

    public class ByteArray : ChunkField
    {
        public byte[] Value;
        public UInt32 Length = 0;

        public override void Read(IReader rdr)
        {
            //Console.WriteLine($"ByteArray Reading {Length} bytes");
            Value = new byte[Length];

            for (int i = 0; i < Length; i++)
            {
                var b = rdr.GetByte();
                Value[i] = b;
            }
        }

        public override void StartNew()
        {
            Value = null;
        }

        public int IndexOf(byte[] pattern)
        {
            for (int i = 0; i < Value.Length - pattern.Length + 1; i++)
            {
                if (Value[i] == pattern[0])
                {
                    if (ByteArrayContains(Value, i, pattern))
                        return i;
                }
            }
            return -1;
        }

        private bool ByteArrayContains(byte[] a, int pos, byte[] b)
        {
            for (int i = 0; i < b.Length; i++)
                if (a[pos + i] != b[i])
                    return false;
            
            return true;
        }
    }
}
