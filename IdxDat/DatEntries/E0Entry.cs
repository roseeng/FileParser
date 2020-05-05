using FileParser;
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
        Data16LE separator;
        Data32LE filingFlags;
        Data16LE entrySubtype;
        Data32LE UIN;
        Data16LE messageTextLength;
        Chararray messageText;
        Data32LE status;
        Data32LE sentOrReceived;
        Data16LE separator2;
        Data32LE timestamp;

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
                 messageTextLength,
                 //messageText,
                 //status,
                 //sentOrReceived,
                 //separator2,
                 //timestamp
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            messageText.Length = messageTextLength.Value;
            messageText.Read(rdr);
            status.Read(rdr);
            sentOrReceived.Read(rdr);
            separator2.Read(rdr);
            timestamp.Read(rdr);

            var dest = (sentOrReceived.Value == 0) ? "from" : "to";
            Parser.Dumper.OnInfo($"Message {dest} UIN:{UIN.Value}, Text: {messageText.Value}");
            base.AfterAutomaticRead(rdr);
        }
    }
}
