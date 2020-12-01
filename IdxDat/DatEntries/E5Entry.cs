using FileParser;
using IdxDat.DatEntries;
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

        public uint UIN = 0;
        public string Nickname = "";
        public Dictionary<string, string> Properties = new Dictionary<string, string>();

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

        public override void AfterAutomaticRead(IReader rdr)
        {
            // Repeat
            Data16LE separator4 = new Data16LE(); ;
            Data32LE properties = new Data32LE(); ;

            // Repeat-repeat
            AsciiZ name = new AsciiZ(); 
            Data8 propType = new Data8();

            Data8 data8 = new Data8();
            Data16LE data16 = new Data16LE();
            Data32LE data32 = new Data32LE();
            AsciiZ textData = new AsciiZ();
            ByteArray binData = new ByteArray();

            for (int block = 0; block < propertyBlocks.Value; block++)
            {
                separator4.Read(rdr);
                properties.Read(rdr);
                for (int i = 0; i < properties.Value; i++)
                {
                    name.Read(rdr);
                    var propName = name.Value;

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
                            textData.Read(rdr);
                            value = textData.Value;
                            if (propName == "NickName" || propName == "MyDefinedHandle")
                                Nickname =  value;

                            break;
                        case 0x6D:
                            data32.Read(rdr); // Count
                            data8.Read(rdr); // Type
                            value = "(sublist) : ";
                            if (data8.Value == 0x6B)
                            {
                                for (int j = 0; j < data32.Value; j++)
                                {
                                    textData.Read(rdr);
                                    value += textData.Value + ", ";
                                }
                            }
                            else
                            {
                                if (Parser.Debug)
                                    Parser.Dumper.OnInfo($"Property type sublist, subtype 6D-{data8.Value.ToString("X2")} is Not Yet Implemented");
//                                throw new NotImplementedException($"Property type sublist, subtype 6D-{data8.Value.ToString("X2")} is Not Yet Implemented");
                            }
                            break;
                        case 0x6F:
                            data32.Read(rdr); // Length
                            binData.Length = data32.Value;
                            binData.Read(rdr);
                            value = "(blob)";
                            break;

                        default:
                            value = "";
                            break;
                    }

                    if (string.IsNullOrEmpty(propName))
                    {
                        if (Parser.Debug)
                            Parser.Dumper.OnInfo($"(empty propname)");
                        continue;
                    }

                    Properties.Add(propName, value);
                    if (Parser.Debug)
                        Parser.Dumper.OnInfo($"'{propName}' : " + propType.Value.ToString("X2") + $" Value: {value}");
                }
            }

            Parser.Dumper.OnInfo($"Contact UIN: {UIN} Nick: {Nickname}");
            base.AfterAutomaticRead(rdr);
        }
    }
}
