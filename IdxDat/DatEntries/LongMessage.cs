﻿using FileParser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IdxDat
{
    public class LongMessage : Entry
    {
        //Data32LE length;
        //Data32LE type;
        //Data32LE datEntryNumber;
        //Magic signature;
        public Data16LE separator;
        public Data32LE filingFlags;
        public Data16LE entrySubtype;
        public Data32LE UIN;
        public Data16LE ansiTextLength;
        public Chararray ansiText;
        public Data32LE status;
        public Data32LE sentOrReceived;
        public Data16LE separator2;
        public Data32LE timestamp;

        public Chararray nineteenZeroes;

        public Data16LE richTextLength;
        public ByteArray richText;

        public Data16LE utf8TextLength;
        public ByteArray utf8Text;

        public Data32LE Unknown0;
        public Data32LE Unknown1;
        public Data32LE Unknown2; // received: 00800080h,  sent: 00FFFFFFh

        public LongMessage()
        {
            signature = new Magic(new byte[] { 0x50, 0x3B, 0xC1, 0x5C, 0x5C, 0x95, 0xD3, 0x11, 0x8D, 0xD7, 0x00, 0x10, 0x4B, 0x06, 0x46, 0x2E });

            SetupChunkFields(inherit: true);
            
            nineteenZeroes.Length = 19;

            AutomaticFields = new List<ChunkField>
            {
                 length,
                 type,
                 datEntryNumber,
                 signature,
                 separator,                                 
                 filingFlags,
                 entrySubtype,
                 UIN,
                 ansiTextLength,
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            ansiText.Length = ansiTextLength.Value;
            ansiText.Read(rdr);

            status.Read(rdr);
            sentOrReceived.Read(rdr);
            separator2.Read(rdr);
            timestamp.Read(rdr);
            nineteenZeroes.Read(rdr);

            Parser.Dumper.OnInfo("19 nollor");

            richTextLength.Read(rdr);
            richText.Length = richTextLength.Value;
            richText.Read(rdr);
            Parser.Dumper.OnInfo($"Rich text: {richText.Length} bytes");

            utf8TextLength.Read(rdr);
            utf8Text.Length = utf8TextLength.Value;

            /*
            utf8Text.Length = 32;
            utf8Text.Read(rdr);
            Parser.Dumper.OnInfo("32 bytes UTF8 text");

            utf8Text.Read(rdr);
            Parser.Dumper.OnInfo("32 bytes UTF8 text");

            utf8Text.Read(rdr);
            Parser.Dumper.OnInfo("32 bytes UTF8 text");
            */
            if (utf8TextLength.Value > 0)
            {
                string kalle = Encoding.UTF8.GetString(utf8Text.Value);
                var otto = kalle;
            }

            Unknown0.Read(rdr);
            Unknown1.Read(rdr);
            Unknown2.Read(rdr);

            var dest = (sentOrReceived.Value == 0) ? "from" : "to";
            Parser.Dumper.OnInfo($"Long Message {dest} UIN:{UIN.Value}, Text: {ansiText.Value}");

            base.AfterAutomaticRead(rdr);
        }
    }
}
