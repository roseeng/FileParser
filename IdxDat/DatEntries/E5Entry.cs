using FileParser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IdxDat
{
    public class E5Entry : Entry
    {
        //Data32LE length;
        //Data32LE filed;
        //Data32LE datEntryNumber;
        //Magic signature;
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
        Data8 propType;        

        public E5Entry()
        {
            signature = new Magic(MakeSig(0xE5));

            SetupChunkFields(inherit: true);
            AutomaticFields = new List<ChunkField>
            {
                 length,
                 type,
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

                    propType.Read(rdr);

                    string value;

                    switch (propType.Value)
                    {
                        case 0x64:
                        case 0x65:
                            data8.Read(rdr);
                            value = data8.Value.ToString("X2");
                            break;
                        case 0x66:
                        case 0x67:
                            data16.Read(rdr);
                            value = data16.Value.ToString("D");
                            break;
                        case 0x68:
                        case 0x69:
                            data32.Read(rdr);

                            if (propName == "UIN")
                                UIN = data32.Value;
                            value = data32.Value.ToString("D");
                            break;
                        case 0x6B:
                            data16.Read(rdr);
                            datax.Length = data16.Value; 
                            datax.Read(rdr);
                            value = datax.Value.Substring(0, datax.Value.Length - 1);
                            if (propName == "NickName" || propName == "MyDefinedHandle")
                                nickname =  value;

                            break;
                        case 0x6D:
                            data32.Read(rdr); // Count
                            data8.Read(rdr); // Type
                            value = "(sublist)";
                            break;
                        case 0x6F:
                            data32.Read(rdr); // Length
                            datax.Length = data32.Value;
                            datax.Read(rdr);
                            value = "(blob)";
                            break;

                        default:
                            value = "";
                            break;
                    }

                    Parser.Dumper.OnInfo($"'{propName}' : " + propType.Value.ToString("X2") + $" Value: {value}");

                }
            }

            base.AfterAutomaticRead(rdr);
        }
    }
}
