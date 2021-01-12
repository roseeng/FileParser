using System;
using System.Collections.Generic;
using System.Text;
using FileParser;

namespace EudoraMbx
{
    public class MessageEntryBlock : SimpleChunk
    {
        public Data32LE Offset = new Data32LE();
        public Data32LE Length = new Data32LE();

        public UnixTimestamp Timestamp = new UnixTimestamp();

        public Data16LE Status = new Data16LE();
        public Data8 Options1 = new Data8();
        public Data8 Options2 = new Data8();

        public Data16LE Priority = new Data16LE();

        public Chararray DateStr = new Chararray() { Length = 32 };
        public Chararray SendRec = new Chararray() { Length = 64 };
        public Chararray Subject = new Chararray() { Length = 64 };

        public ByteArray Corners = new ByteArray() { Length = 8 }; // Really 4 ints
        public Data16LE AlwaysZero = new Data16LE();
        public Data32LE Unknown = new Data32LE();
        public ByteArray AllNulls = new ByteArray() { Length = 26 };

        public MessageEntryBlock()
        {
            AutomaticFields = new List<ChunkField>() {
                Offset,
                Length,
                Timestamp,
                Status,
                Options1,
                Options2,
                Priority,
                DateStr,
                SendRec,
                Subject,
                Corners,
                AlwaysZero,
                Unknown,
                AllNulls
            };
        }

        public override void AfterAutomaticRead(IReader rdr)
        {
            base.AfterAutomaticRead(rdr);

        }
    }
}
