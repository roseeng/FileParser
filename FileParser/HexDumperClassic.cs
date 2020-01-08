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
        private StringBuilder _buffer = new StringBuilder();

        public bool Freeze { get; set; } = false;

        public HexDumperClassic(FileReader rdr)
        {
            _reader = rdr;
        }

        public void Restart()
        {
            _col = 0;
            _buffer.Clear();
        }

        public void Flush()
        {
            Console.Write(_buffer.ToString());
            _buffer.Clear();
        }

        public void OnByte(byte b)
        {
            if (_col > 15)
            {
                _col = 0;
                _buffer.Append("\n");
            }

            if (_col == 0) WritePos();

            if (Decimal)
                _buffer.Append(b.ToString("D3"));
            else
                _buffer.Append(b.ToString("X2"));
            _buffer.Append(" ");

            _col++;

            if (!Freeze) Flush();
        }

        public void WriteLine(string s)
        {
            if (_col == 0) WritePos();

            // Fill out to 16 cols
            while (_col++ <= 15)
                _buffer.Append("   ");

            _buffer.Append(s);
            _buffer.Append("\n");
            _col = 0;

            if (!Freeze) Flush();
        }

        public void NewItem()
        {
            if (_col > 0)
            {
                _col = 0;
                _buffer.Append("\n");
            }
        }

        private void WritePos()
        {
            long pos = _reader.Position;
            string ps = pos.ToString("D6");
            _buffer.Append($"{ps} : ");
        }
    }
}
