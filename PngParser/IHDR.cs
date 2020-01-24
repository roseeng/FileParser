using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

using DamienG.Security.Cryptography;

namespace PngParser
{
    public class IHDR : PngChunk
    {
        /*
        The four-byte chunk type field contains the decimal values

        73 72 68 82
        The IHDR chunk shall be the first chunk in the PNG datastream. It contains:

        Width	4 bytes
        Height	4 bytes
        Bit depth	1 byte
        Colour type	1 byte
        Compression method	1 byte
        Filter method	1 byte
        Interlace method	1 byte

        */
        public Data32BE Width;
        public Data32BE Height;
        Data8 BitDepth;
        Data8 Colour;
        Data8 Compression;
        Data8 Filter;
        Data8 Interlace;

        public IHDR()
        {
            Type = new Magic(new byte[] { 73, 72, 68, 82 });

            SetupChunkFields();

            SetAutomaticFields(new List<ChunkField>()
            {
                Width,
                Height,
                BitDepth,
                Colour,
                Compression,
                Filter,
                Interlace
            });
        }

    }
}
