using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class Size
    {
        public enum TypeEnum
        {
            Absolute,
            Calculated
        }

        public TypeEnum Type;
        public long Value;
    }
}
