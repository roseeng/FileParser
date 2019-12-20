using System;
using System.Collections.Generic;
using System.Text;

using System.IO;

namespace FileParser
{
    public class Chunk
    {
        public Position Position;
        public Size Size;

        public List<ChunkField> AutomaticFields;

        public Chunk()
        {
            Console.WriteLine("Chunk Constructor!");
        }

        public void StartNew()
        {
            foreach (var f in AutomaticFields)
                f.StartNew();
        }

        public virtual void AfterRead(FileReader rdr)
        { }

        public void Read(FileReader rdr)
        {
            foreach (var f in AutomaticFields)
            {
                f.Read(rdr);
            }
        }
    }

    public abstract class ChunkField
    {
        public abstract void StartNew();
        public abstract void Read(FileReader rdr);
    }

    public class ChunkList<T> where T : Chunk, new()
    {
        private T _chunk;
        private ChunkListRepeat _repeat;
        private bool _hasData;

        public ChunkList(ChunkListRepeat repeat = ChunkListRepeat.ToEOF)
        {
            _chunk = new T();
            _repeat = repeat;
            _hasData = true;
        }

        public T ReadOne(FileReader rdr)
        {
            try
            {
                rdr.SetMilestone();
                _chunk.StartNew();
                _chunk.Read(rdr);
                _chunk.AfterRead(rdr);
                return _chunk;
            }
            catch (ParserEOFException)
            {
                if (_repeat == ChunkListRepeat.ToEOF)
                {
                    _hasData = false;
                }
                else
                {
                    throw;
                }
            }
            catch (BadMagicException)
            {
                if (_repeat == ChunkListRepeat.ByMagic)
                {
                    _hasData = false;
                    rdr.GoToMilestone();
                }
                else
                {
                    throw;
                }
            }

            return null; // Not so elegant, the detection logic should be in HasData
        }

        public bool HasData => _hasData;
    }

    public enum ChunkListRepeat
    {
        ToEOF,
        ByMagic
    }
}
