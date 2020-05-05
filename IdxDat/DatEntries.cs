using FileParser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IdxDat
{
    public class Entry : SimpleChunk
    {
        public static byte[] commonSig = new byte[] { 0x00, 0x23, 0xA3, 0xDB, 0xDF, 0xB8, 0xD1, 0x11, 0x8A, 0x65, 0x00, 0x60, 0x08, 0x71, 0xA3, 0x91 };

        public byte[] MakeSig(byte sigbyte)
        {
            var result = commonSig.ToArray();
            result[0] = sigbyte;
            return result;
        }
    }

    public class E0Entry : Entry
    {
        Data32LE length;
        Data32LE type;
        Data32LE datEntryNumber;
        Magic signature;
        Data16LE separator;
        Data32LE filingFlags;
        Data16LE entrySubtype;
        Data32LE UIN;
        Data16LE descrLength;
        Chararray descriptionAndUrl;
        Data32LE status;
        Data32LE sentOrReceived;
        Data16LE separator2;
        Data32LE timestamp;

        public E0Entry()
        {
            signature = new Magic(MakeSig(0xE0));

            SetupChunkFields();
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
                 descrLength,
                 //descriptionAndUrl,
                 //status,
                 //sentOrReceived,
                 //separator2,
                 //timestamp
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            descriptionAndUrl.Length = descrLength.Value;
            descriptionAndUrl.Read(rdr);
            status.Read(rdr);
            sentOrReceived.Read(rdr);
            separator2.Read(rdr);
            timestamp.Read(rdr);

            base.AfterAutomaticRead(rdr);
        }
    }

    public class E5Entry : Entry
    {
        Data32LE length;
        Data32LE filed;
        Data32LE datEntryNumber;
        Magic signature;
        Data16LE separator;
        Data32LE label;

        Data32LE entryStatus;
        Data32LE groupId;
        Data16LE separator2;

        Data32LE wavEntries;
        Data16LE separator3;

        Data32LE propertyBlocks;

        // Repeat
        Data16LE separator4;
        Data32LE properties;

        // Repeat-repeat
        Data16LE nameLength;
        Chararray name;
        Data8 type;

        //Chararray data;

        public E5Entry()
        {
            signature = new Magic(MakeSig(0xE5));

            SetupChunkFields();
            AutomaticFields = new List<ChunkField>
            {
                 length,
                 filed,
                 datEntryNumber,
                 signature,
                 separator,
                 label,
                 entryStatus,
                 groupId,
                 separator2,
                 wavEntries,
                 separator3,
                 propertyBlocks,
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            //data.Length = length.Value - (4 + 4 + 4 + 16 + 2 + 4 + 4 + 4 + 2);
            //data.Read(rdr);
            Data8 data8 = new Data8();
            Data16LE data16 = new Data16LE();
            Data32LE data32 = new Data32LE();
            Chararray datax = new Chararray();

            long UIN;
            string nickname;

            for (int block = 0; block < propertyBlocks.Value; block++)
            {
                separator4.Read(rdr);
                properties.Read(rdr);
                for (int i = 0; i < properties.Value; i++)
                {
                    nameLength.Read(rdr);
                    name.Length = nameLength.Value;
                    name.Read(rdr);

                    var propName = name.Value.Substring(0, name.Value.Length - 1);
                    type.Read(rdr);

                    Parser.Dumper.OnInfo($"'{name.Value}' : " + type.Value.ToString("X2"));

                    switch (type.Value)
                    {
                        case 0x64:
                        case 0x65:
                            data8.Read(rdr);
                            break;
                        case 0x66:
                        case 0x67:
                            data16.Read(rdr);
                            break;
                        case 0x68:
                        case 0x69:
                            data32.Read(rdr);

                            if (propName == "UIN")
                                UIN = data32.Value;

                            break;
                        case 0x6B:
                            data16.Read(rdr);
                            datax.Length = data16.Value; 
                            datax.Read(rdr);

                            Parser.Dumper.OnInfo($"Value: {datax.Value}");
                            if (propName == "NickName" || propName == "MyDefinedHandle")
                                nickname = datax.Value.Substring(0, datax.Value.Length - 1); ;

                            break;
                        default:
                            break;
                    }
                }
            }
            base.AfterAutomaticRead(rdr);
        }
    }

    public class E7Entry : Entry
    {
        Data32LE length;
        Data32LE type;
        Data32LE datEntryNumber;
        Magic signature;
        Data16LE separator;
        Data32LE label;

        Data32LE unknown0;
        Data32LE unknown1;
        Data32LE unknown2;

        Data16LE nameLength;
        Chararray name;

        public E7Entry()
        {
            signature = new Magic(MakeSig(0xE7));

            SetupChunkFields();
            AutomaticFields = new List<ChunkField>
            {
                 length,
                 type,
                 datEntryNumber,
                 signature,
                 separator,
                 label,
                 unknown0,
                 unknown1,
                 unknown2,
                 nameLength,
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            name.Length = nameLength.Value;
            name.Read(rdr);

            base.AfterAutomaticRead(rdr);
        }
    }
}
