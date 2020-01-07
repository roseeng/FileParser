using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace PngParser
{
    public class pHYs : PngChunk
    {
        /*
        The four-byte chunk type field contains the decimal values

        112 72 89 115
        The pHYs chunk specifies the intended pixel size or aspect ratio for display of the image. It contains:

        Pixels per unit, X axis	4 bytes (PNG unsigned integer)
        Pixels per unit, Y axis	4 bytes (PNG unsigned integer)
        Unit specifier	1 byte
        The following values are defined for the unit specifier:

        0	unit is unknown
        1	unit is the metre
        When the unit specifier is 0, the pHYs chunk defines pixel aspect ratio only; the actual size of the pixels remains unspecified.

        If the pHYs chunk is not present, pixels are assumed to be square, and the physical size of each pixel is unspecified.

        */

        public Data32BE PPUX = new Data32BE();
        public Data32BE PPUY = new Data32BE();
        public Data8 UnitSpecifier = new Data8();

        public pHYs()
        {
            Type = new Magic(new byte[] { 112, 72, 89, 115 });
            //SetupChunkFields();

            AutomaticFields = new List<ChunkField>()
            {
                Length,
                Type, 
                PPUX, 
                PPUY, 
                UnitSpecifier, 
                CRC
            };
        }
    }
}
