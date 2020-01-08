using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace PngParser
{
    public class gAMA : PngChunk
    {
        /*
        The four-byte chunk type field contains the decimal values

        103 65 77 65
        The gAMA chunk specifies the relationship between the image samples and the desired display output intensity. 
        Gamma is defined in 3.1.20: gamma.

        In fact specifying the desired display output intensity is insufficient. It is also necessary to specify the 
        viewing conditions under which the output is desired. For gAMA these are the reference viewing conditions 
        of the sRGB specification [IEC 61966-2-1], which are based on ISO 3664 [ISO-3664]. Adjustment for different 
        viewing conditions is normally handled by a Colour Management System. If the adjustment is not performed, 
        the error is usually small. 
        Applications desiring high colour fidelity may wish to use an sRGB chunk or iCCP chunk.

        The gAMA chunk contains:

        Image gamma	4 bytes
        The value is encoded as a four-byte PNG unsigned integer, representing gamma times 100000.

        EXAMPLE A gamma of 1/2.2 would be stored as the integer 45455.
        */

        public Data32BE Gamma = new Data32BE();

        public gAMA()
        {
            Type = new Magic(new byte[] { 103, 65, 77, 65 });

            /*
            AutomaticFields = new List<ChunkField>()
            {
                Length,
                Type,
                Gamma,
                CRC
            };
            */
            SetAutomaticFields(new List<ChunkField>()
            {
                Gamma
            });
        }
    }
}
