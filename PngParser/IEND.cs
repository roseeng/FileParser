using System;
using System.Collections.Generic;
using System.Text;

using FileParser;
namespace PngParser
{
    public class IEND : PngChunk
    {        
        public IEND()
        {
            Type = new Magic(new byte[] { 73, 69, 78, 68 });

            SetAutomaticFields(new List<ChunkField>()
            {
                
            });
        }
    }
}
