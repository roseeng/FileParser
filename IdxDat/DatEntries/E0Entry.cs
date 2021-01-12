using FileParser;
using IdxDat.DatEntries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IdxDat
{
    public class E0Entry : Entry
    {
        //Data32LE length;
        //Data32LE type;
        //Data32LE datEntryNumber;
        //Magic signature;
        public Data16LE separator;
        public Data32LE filingFlags;
        public Data16LE entrySubtype;
        public Data32LE UIN;
        public AsciiZ messageText;
        public Data32LE status;
        public Data32LE sentOrReceived;
        public Data16LE separator2;
        public UnixTimestamp timestamp;

        public E0Entry()
        {
            signature = new Magic(MakeSig(0xE0));

            SetupChunkFields(inherit: true);
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
                 messageText,
                 status,
                 sentOrReceived,
                 separator2,
                 timestamp
            };
        }

        public override void AfterAutomaticRead(IReader rdr)
        {
            var message = entrySubtype.Value switch
            {
                0x01 => "Message",
                0x04 => "URL Message",
                0x13 => "Contacts list",
                _ => "Message of unknown type"
            };

            var dest = (sentOrReceived.Value == 0) ? "from" : "to";
            Parser.Dumper.OnInfo($"{timestamp} {message} {dest} UIN:{UIN.Value}, Text: {messageText.Value}");
            base.AfterAutomaticRead(rdr);
        }

    }
}
