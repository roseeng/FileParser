using System;
using System.Collections.Generic;
using System.Text;
//using Microsoft.EntityFrameworkCore.
namespace DbWriter
{
    //[Keyless]
    public class Message
    {
        public int Id { get; set; }
        public Direction Direction { get; set; }
        public long UIN { get; set; }
        public DateTime Timestamp { get; set; }
        public string Text { get; set; }
        public long Hash { get; set; }
    }

    public enum Direction
    {
        From,
        To
    }
}
