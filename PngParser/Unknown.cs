﻿using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace PngParser
{
    public class Unknown : SimpleChunk
    {
        public Data32BE Length = new Data32BE();
        public Chararray Type = new Chararray();
        public Chararray Data = new Chararray();
        public Data32BE CRC = new Data32BE();

        public Unknown()
        {
            Type.Length = 4;

            AutomaticFields = new List<ChunkField>()
            {
                Length,
                Type
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            Parser.WriteLine("Magic: " + Type.Value);

            Data.Length = Length.Value;
            Data.Read(rdr);

            CRC.Read(rdr);
        }
    }
}