using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace PngParser
{
    public class tEXt : PngChunk
    {
        /*
        Textual information that the encoder wishes to record with the image can be stored in tEXt chunks. 
        Each tEXt chunk contains a keyword (see above) and a text string, in the format:

           Keyword:        1-79 bytes (character string)
           Null separator: 1 byte
           Text:           n bytes (character string)
        
        The keyword and text string are separated by a zero byte (null character). Neither the keyword nor 
        the text string can contain a null character. Note that the text string is not null-terminated 
        (the length of the chunk is sufficient information to locate the ending). The text string can be 
        of any length from zero bytes up to the maximum permissible chunk size less the length of the keyword 
        and separator.

        */
        private Chararray Data = new Chararray();
        public string Keyword { get; set; }
        public string Text { get; set; }

        public tEXt()
        {
            Type = new Magic(new byte[] { 116, 69, 88, 116 });

            AutomaticFields = new List<ChunkField>()
            {
                Length,
                Type
            };
        }

        public override void AfterAutomaticRead(FileReader rdr)
        {
            Data.Length = Length.Value;
            Data.Read(rdr);

            var tmp = Data.Value.Split(new char[] { (char)0 });
            if (tmp.Length == 2)
            {
                Keyword = tmp[0];
                Text = tmp[1];
            }
            else
            {
                Keyword = "";
                Text = Data.Value;
            }
            Parser.WriteLine("tEXt: " + Text);

            CRC.Read(rdr);
        }
    }
}
