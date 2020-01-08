using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

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
    public class PngChunk : Chunk
    {
        public Data32BE Length = new Data32BE();
        public Magic Type;
        // Data
        public Data32BE CRC = new Data32BE();

        public PngChunk()
        {
            Console.WriteLine("PngChunk constructor");
        }
        public void SetAutomaticFields(List<ChunkField> fields)
        {
            AutomaticFields.Clear();
            AutomaticFields.Add(Length);
            AutomaticFields.Add(Type);
            AutomaticFields.AddRange(fields);
            AutomaticFields.Add(CRC);
        }
    }

}
