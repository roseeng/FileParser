using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class HexDumperClassic
    {
        int _col = 0;
        public bool Decimal { get; set; } = false;

        private FileReader _reader;
        public HexDumperClassic(FileReader rdr)
        {
            _reader = rdr;
        }

        public void OnByte(byte b)
        {
            if (_col > 15)
            {
                _col = 0;
                Console.WriteLine("");
            }

            if (_col == 0) WritePos();

            if (Decimal)
                Console.Write(b.ToString("D3"));
            else
                Console.Write(b.ToString("X2"));
            Console.Write(" ");

            _col++;
        }

        public void WriteLine(string s)
        {
            if (_col == 0) WritePos();

            // Fill out to 16 cols
            while (_col++ <= 15)
                Console.Write("   ");

            Console.WriteLine(s);
            _col = 0;
        }

        public void NewItem()
        {
            if (_col > 0)
            {
                _col = 0;
                Console.WriteLine("");
            }
        }

        private void WritePos()
        {
            long pos = _reader.Position;
            string ps = pos.ToString("D6");
            Console.Write($"{ps} : ");
        }
    }
}
