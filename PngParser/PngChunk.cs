﻿using System;
using System.Collections.Generic;
using System.Text;

using FileParser;
using DamienG.Security.Cryptography;

namespace PngParser
{
    /*
    Each chunk consists of four parts:

    Length
    A 4-byte unsigned integer giving the number of bytes in the chunk's data field. The length counts only the data field, not itself, the chunk type code, or the CRC. Zero is a valid length. Although encoders and decoders should treat the length as unsigned, its value must not exceed 231 bytes.
    Chunk Type
    A 4-byte chunk type code. For convenience in description and in examining PNG files, type codes are restricted to consist of uppercase and lowercase ASCII letters (A-Z and a-z, or 65-90 and 97-122 decimal). However, encoders and decoders must treat the codes as fixed binary values, not character strings. For example, it would not be correct to represent the type code IDAT by the EBCDIC equivalents of those letters. Additional naming conventions for chunk types are discussed in the next section.
    Chunk Data
    The data bytes appropriate to the chunk type, if any. This field can be of zero length.
    CRC
    A 4-byte CRC (Cyclic Redundancy Check) calculated on the preceding bytes in the chunk, including the chunk type code and chunk data fields, but not including the length field. The CRC is always present, even for chunks containing no data. See CRC algorithm.
    The chunk data length can be any number of bytes up to the maximum; therefore, implementors cannot assume that chunks are aligned on any boundaries larger than bytes.


    All integers that require more than one byte shall be in network byte order (as illustrated in figure 7.1): the most significant byte comes first

    */
    public class PngChunk : SimpleChunk
    {
        public Data32BE Length = new Data32BE();
        public Magic Type; // Set by subclass
        // Data
        public Data32BE CRC = new Data32BE();

        public PngChunk()
        {
            if (Parser.Debug) Console.WriteLine("PngChunk constructor");
        }

        public void SetAutomaticFields(List<ChunkField> fields)
        {
            AutomaticFields.AddRange(fields);
        }

        public override void BeforeAutomaticRead(IReader rdr)
        {
            Length.Read(rdr);

            ResetCRC();
            // Register our CRC calculator (Length is not included in the clculation, byt Type is)
            rdr.OnByteRead = this.OnByte;
            
            Type.Read(rdr);
        }

        public override void AfterAutomaticRead(IReader rdr)
        {
            // Unregister the CRC calculation (CRC is not included in the calculation, Dah)
            rdr.OnByteRead = null;

            CRC.Read(rdr);
            if (CRC.Value == currentCRC)
                Parser.Dumper.OnInfo("CRC OK.");
            else
                throw new FileParserException($"Invalid CRC, got {currentCRC}, expected {CRC.Value}");
        }

        public int nBytes = 0;
        public UInt32 currentCRC = Crc32.DefaultSeed;

        public void ResetCRC()
        {
            currentCRC = 0;
            nBytes = 0;
        }

        public void OnByte(byte b, long _)
        {
            currentCRC = Crc32.Compute(~currentCRC, new byte[] { b });
            nBytes++;
        }
    }

}
