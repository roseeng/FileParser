using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class HexDumperConsole
    {
        int _col = 0;
        public bool Decimal { get; set; } = false;
        
        public HexDumperConsole()
        {
        }

        public void OnByte(byte b, long pos)
        {
            if (_col > 15)
            {
                _col = 0;
                Console.WriteLine("");
            }

            if (_col == 0) WritePos(pos);

            if (Decimal)
                Console.Write(b.ToString("D3"));
            else
                Console.Write(b.ToString("X2"));
            Console.Write(" ");

            _col++;
        }

        public void OnInfo(string s, long pos)
        {
            if (_col == 0) 
                WritePos(pos);

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

        private void WritePos(long pos)
        {
            string ps;
            if (Decimal)
                ps = pos.ToString("D6");
            else
                ps = pos.ToString("X4");
            Console.Write($"{ps} : ");
        }
    }
}
