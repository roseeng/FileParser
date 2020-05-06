using System;
using System.Collections.Generic;
using System.Text;

using FileParser;

namespace IdxDat
{
    class DatFile : FileChunk
    {
        public DatMainHeader Header = new DatMainHeader();
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
    }
}
