using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FileParser
{
    public class HexDumperConsole
    {
        int _col = 0;
        public bool Decimal { get; set; } = false;
        
        public HexDumperConsole()
        {
            ColorSpans = new List<ColorSpan>();
        }

        public List<ColorSpan> ColorSpans { get; private set; }

        public ConsoleColor DefaultColor { get; set; } = ConsoleColor.White;

        public void OnByte(byte b, long pos)
        {
            if (_col > 15)
            {
                _col = 0;
                Console.WriteLine("");
            }

            if (_col == 0) WritePos(pos);

            var colorSpan = ColorSpans.Where(s => s.Start <= pos && s.End >= pos).LastOrDefault();
            if (colorSpan != null) // (ColorSpan != null && ColorSpan.Start <= pos && ColorSpan.End >= pos)
                Console.ForegroundColor = colorSpan.Color;
            else
                Console.ForegroundColor = DefaultColor;

            if (Decimal)
                Console.Write(b.ToString("D3"));
            else
                Console.Write(b.ToString("X2"));

            Console.ForegroundColor = ConsoleColor.White;
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

    public class ColorSpan
    {
        public ConsoleColor Color;
        public long Start;
        public long End;

        public ColorSpan()
        {
            Color = ConsoleColor.White;
            Start = 0;
            End = 0;
        }

        public ColorSpan(ConsoleColor color, long start, long end)
        {
            Color = color;
            Start = start;
            End = end;
        }
    }
}
