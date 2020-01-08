using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace PngParser
{
    /*
    http://www.libpng.org/pub/png/spec/1.2/PNG-Structure.html

    A valid PNG image must contain an IHDR chunk, one or more IDAT chunks, and an IEND chunk.

    Critical chunks (must appear in this order, except PLTE
                    is optional):
   
           Name  Multiple  Ordering constraints
                   OK?
   
           IHDR    No      Must be first
           PLTE    No      Before IDAT
           IDAT    Yes     Multiple IDATs must be consecutive
           IEND    No      Must be last
   
    Ancillary chunks (need not appear in this order):
   
           Name  Multiple  Ordering constraints
                   OK?
   
           cHRM    No      Before PLTE and IDAT
           gAMA    No      Before PLTE and IDAT
           iCCP    No      Before PLTE and IDAT
           sBIT    No      Before PLTE and IDAT
           sRGB    No      Before PLTE and IDAT
           bKGD    No      After PLTE; before IDAT
           hIST    No      After PLTE; before IDAT
           tRNS    No      After PLTE; before IDAT
           pHYs    No      Before IDAT
           sPLT    Yes     Before IDAT
           tIME    No      None
           iTXt    Yes     None
           tEXt    Yes     None
           zTXt    Yes     None
    */
    public class PngFile : FileChunk
    {
        public Magic FileMagic;
        public IHDR Header = new IHDR();
        public PLTE Palette = new PLTE();
        public gAMA Gamma = new gAMA();
        public pHYs Physical = new pHYs();

        public PolyChunk Data;

        public PngFile()
        {
            FileMagic = new Magic(new byte[] { 137, 80, 78, 71, 13, 10, 26, 10 });

            Data = new PolyChunk();
            Data.RegisterType(typeof(PLTE));
            Data.RegisterType(typeof(gAMA));
            Data.RegisterType(typeof(pHYs));
            Data.RegisterType(typeof(tEXt));
            Data.RegisterType(typeof(IDAT));
            Data.FallbackType = typeof(Unknown);
        }
    }
}
