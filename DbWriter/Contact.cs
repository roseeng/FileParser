using System;
using System.Collections.Generic;
using System.Text;

namespace DbWriter
{
    public class Contact
    {
        public int Id { get; set; }
        public uint UIN { get; set; }
        public string Nickname { get; set; }
        public long Hash { get; set; }
    }
}
