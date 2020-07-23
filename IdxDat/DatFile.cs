using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class DatFile : FileChunk
    {
        public DatMainHeader MainHeader = new DatMainHeader();
        public DatPageHeader PageHeader = new DatPageHeader();

        public byte[] ValidSigs;
        public PolyChunk PolyChunk = new PolyChunk();
        
        public LongMessage LongMessage = new LongMessage();

        /*
        
            Signature bytes:
                                E0h = Message / URL Message / Request For
                                      Authorization / "Authorization" /
                                      System Request / "You Were Added" /
                                      Contacts List
                                E1h = Chat Request
                                E2h = File Request
                                E4h = My Details
                                E5h = contact information
                                E6h = Reminder
                                E7h = address book?
                                ECh = Voice Message???  //I have no idea
                                EEh = Note
                                EFh = event folder
                                F1h = servers list / objectionable words list
                                F6h = (new to ICQ 99b???)
        */
        public DatFile()
        {
            PolyChunk.RegisterType(typeof(E0Entry));
            PolyChunk.RegisterType(typeof(E5Entry));
            PolyChunk.RegisterType(typeof(E7Entry));

            //            ValidSigs = new byte[] { 0xE0, 0xE1, 0xE2, 0xE4, 0xE5, 0xE6, 0xE7 };
            ValidSigs = new byte[] { 0xE0, 0xE5, 0xE7 };
        }

        public void ReadPage(FileReader rdr, HexDumperConsole console)
        {
            for (int i = 0; i < 1000; i++)
            {
                rdr.SetMilestone();
                if (PageHeader.AllocationBitmap[i])
                    ; //console.ColorSpans.Add( new ColorSpan(ConsoleColor.Green, rdr.Position, rdr.Position + 63));
                else
                    console.ColorSpans.Add(new ColorSpan(ConsoleColor.Gray, rdr.Position, rdr.Position + 63));

                PageHeader.Slot.Read(rdr);
                var ix = PageHeader.Slot.IndexOf(new byte[] { 0x23, 0xA3, 0xDB }); // Normal message types
                if (ix < 0)
                    ix = PageHeader.Slot.IndexOf(new byte[] { /*0x50,*/ 0x3B, 0xC1, 0x5C }); // Long message
                if (ix >= 0)
                {
                    byte type = PageHeader.Slot.Value[ix - 1];
                    UInt32 len = BitConverter.ToUInt32(PageHeader.Slot.Value, ix - 13);
                    if (PageHeader.AllocationBitmap[i])
                        Parser.Dumper.OnInfo($"Found a signature: {type:X2}, length: {len} ({len:X4})");
                    else
                        Parser.Dumper.OnInfo($"Found a signature IN UNALLOCATED SPACE: {type:X2}, length: {len} ({len:X4})");
                    rdr.GoToMilestone();
                    console.ColorSpans.Add(new ColorSpan(ConsoleColor.White, rdr.Position + ix - 13, rdr.Position + ix - 13 + len)); // +20
                    PageHeader.Slot.Read(rdr);

                    /// TODO: Bufferten måste vara lika stor som chunken, inte bara en slot
                    var memrdr = new MemoryReader();
                    memrdr.Open(PageHeader.Slot.Value);
                    PolyChunk.Read(memrdr);
                    ///
                }
                else
                {
                    Parser.Dumper.OnInfo(".");
                }
            }
        }
    }
}
