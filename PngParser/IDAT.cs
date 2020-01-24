using System;
using System.Collections.Generic;
using System.Text;

using FileParser;
namespace PngParser
{
    public class IDAT : PngChunk
    {
        public IDAT()
        {
            Type = new Magic(new byte[] { 73, 68, 65, 84 });                    
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            var data = new Chararray();
            data.Length = this.Length.Value;
            data.Read(rdr);

            base.AfterAutomaticRead(rdr);
        }
    }
}
