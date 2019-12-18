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
            for (int i = 0; i < _magic.Length; i++)
            {
                byte b = rdr.GetByte();
                if (b != _magic[i])
                    Fail();
            }
            IsValid = true;
            Console.WriteLine("Magic OK!");
        }

        private void Fail()
        {
            IsValid = false;
            throw new ApplicationException();
        }
    }
}
