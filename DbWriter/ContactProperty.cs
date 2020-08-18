using System;
using System.Collections.Generic;
using System.Text;

namespace DbWriter
{
    public class ContactProperty
    {
        public int Id { get; set; }
        public uint UIN { get; set; }
        public string Name { get; set; }
        public string Value { get; set; }
        public long Hash { get; set; }
    }
}
