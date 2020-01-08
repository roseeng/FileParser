using System;
using System.Collections.Generic;
using System.Text;

using FileParser;
namespace PngParser
{
    public class PLTE : PngChunk
    {
        /*
        The four-byte chunk type field contains the decimal values

        80 76 84 69
        The PLTE chunk contains from 1 to 256 palette entries, each a three-byte series of the form:

        Red	    1 byte
        Green	1 byte
        Blue	1 byte

        The number of entries is determined from the chunk length. A chunk length not divisible by 3 is an error.

        This chunk shall appear for colour type 3, and may appear for colour types 2 and 6; it shall not appear 
        for colour types 0 and 4. There shall not be more than one PLTE chunk.

        For colour type 3 (indexed-colour), the PLTE chunk is required. The first entry in PLTE is referenced by 
        pixel value 0, the second by pixel value 1, etc. The number of palette entries shall not exceed the range 
        that can be represented in the image bit depth (for example, 24 = 16 for a bit depth of 4). It is permissible 
        to have fewer entries than the bit depth would allow. 
        In that case, any out-of-range pixel value found in the image data is an error.

        For colour types 2 and 6 (truecolour and truecolour with alpha), the PLTE chunk is optional. 
        If present, it provides a suggested set of colours (from 1 to 256) to which the truecolour image can be 
        quantized if it cannot be displayed directly. It is, however, recommended that the sPLT chunk be used for 
        this purpose, rather than the PLTE chunk. If neither PLTE nor sPLT chunks are present and the image cannot 
        be displayed directly, quantization has to be done by the viewing system. However, it is often preferable 
        for the selection of colours to be done once by the PNG encoder. (See 12.6: Suggested palettes.)

        Note that the palette uses 8 bits (1 byte) per sample regardless of the image bit depth. In particular, 
        the palette is 8 bits deep even when it is a suggested quantization of a 16-bit truecolour image.

        There is no requirement that the palette entries all be used by the image, nor that they all be different.

        */
        ChunkList<RGBTriplet> Entries;

        public PLTE()
        {
            Type = new Magic(new byte[] { 80, 76, 84, 69 });
            //SetupChunkFields();

            AutomaticFields = new List<ChunkField>()
            {
                Length,
                Type
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            if (Length.Value % 3 != 0)
                throw new FileParserException("PLTE: length not a multiple of 3");

            Entries = new ChunkList<RGBTriplet>(ChunkListRepeat.ToCount, Length.Value / 3);
            Entries.Read(rdr);

            CRC.Read(rdr);
        }
    }

    public class RGBTriplet : Chunk
    {
        Data8 Red;
        Data8 Green;
        Data8 Blue;

        public RGBTriplet()
        {
            SetupChunkFields();
        }
    }
}
