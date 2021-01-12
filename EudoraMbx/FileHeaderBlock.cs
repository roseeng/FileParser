using System;
using System.Collections.Generic;
using System.Text;
using FileParser;

namespace EudoraMbx
{
    public class FileHeaderBlock : SimpleChunk
    {
        public ByteArray Version = new ByteArray() { Length = 8 };
        public Chararray MbxName = new Chararray() { Length = 32 };
        public Data16LE Type = new Data16LE();
        public Data16LE AlwaysZero = new Data16LE();
        public Data16LE Class = new Data16LE();

        public ByteArray Corners = new ByteArray() { Length = 8 }; // Really 4 ints
        public ByteArray Columns = new ByteArray() { Length = 16 }; // Really 8 ints

        public Data16LE Always2 = new Data16LE();
        public ByteArray AllNulls = new ByteArray() { Length = 30 };

        public Data16LE MessageCount = new Data16LE();

        public FileHeaderBlock()
        {
            AutomaticFields = new List<ChunkField>() {
                Version,
                MbxName,
                Type,
                AlwaysZero,
                Class,
                Corners,
                Columns,
                Always2,
                AllNulls,
                MessageCount
            };
        }
    }
}
