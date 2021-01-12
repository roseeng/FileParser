using System;
using System.Collections.Generic;
using System.Text;

namespace DbWriter
{
    public class FileImport
    {
        public int Id { get; set; }
        public string Filename { get; set; }
        public DateTime ImportDate { get; set; }
        public string Statistics { get; set; }
    }
}
