using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

using DamienG.Security.Cryptography;

namespace PngParser
{
    public class IEND : PngChunk
    {        
        public IEND()
        {
            Type = new Magic(new byte[] { 73, 69, 78, 68 });          
        }

        public override void AfterAutomaticRead(IReader rdr)
        {
            base.AfterAutomaticRead(rdr);

            if (CRC != null && Type != null)
            {
                var arr = new byte[] { 73, 69, 78, 68 };
                var olle = CRC.Value;
                var kalle = Crc32.Compute(arr);
            }
        }
    }
}
