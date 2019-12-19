using System;
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

            for (int i = 0; i < _magic.Length; i++)
            {
                buf[i] = rdr.GetByte();
                if (buf[i] != _magic[i])
                    IsValid = false;
            }
            if (IsValid.HasValue && IsValid.Value)
            {
                Console.WriteLine("Magic OK!");
            }
            else
            {
                var s = $"Bad Magic! Expected {BitConverter.ToString(_magic)}, got {BitConverter.ToString(buf)}";
                Console.WriteLine(s);
                throw new BadMagicException(s);
            }
        }

        public override void StartNew()
        {            
        }
    }
}
