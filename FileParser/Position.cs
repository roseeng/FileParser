using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class Position
    {
        public enum TypeEnum
        {
            Absolute,
            RelativeToCurrent,
            RelativeToEOF,
            RelativeToParent
        }

        public TypeEnum Type;
        public long Value;
    }
}
