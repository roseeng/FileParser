using System;
using System.Collections.Generic;
using System.Text;

using System.IO;
using System.Reflection;
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

        public virtual void AfterAutomaticRead(FileReader rdr)
        { }

        public void Read(FileReader rdr)
        {
            foreach (var f in AutomaticFields)
            {
                f.Read(rdr);
            }
        }

        public void SetupChunkFields()
        {
            Type type = this.GetType();

            FieldInfo[] fields = type.GetFields(BindingFlags.Instance | BindingFlags.DeclaredOnly| BindingFlags.NonPublic | BindingFlags.Public); //.GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (FieldInfo field in fields)
            {
                var otto = field.GetValue(this);
                if (otto == null)
                    if (field.FieldType.IsSubclassOf(typeof(ChunkField)))
                    {
                        Console.WriteLine("Fixing construction for: " + field.Name);
                        var fieldType = field.FieldType;
                        var kakan = fieldType.InvokeMember("", BindingFlags.CreateInstance, null, null, null);
                        field.SetValue(this, kakan);
                    }
            }
        }
    }

    public abstract class ChunkField
    {
        public abstract void StartNew();
        public abstract void Read(FileReader rdr);
    }

    public class ChunkList<T> : ChunkField  where T : Chunk, new()
    {
        private T _chunk;
        private ChunkListRepeat _repeat;
        private bool _hasData;
        private long _count;

        public ChunkList(ChunkListRepeat repeat = ChunkListRepeat.ToEOF, long count = 0)
        {
            _chunk = new T();
            _repeat = repeat;
            _hasData = true;
            _count = count;
        }

        public T ReadOne(FileReader rdr)
        {
            try
            {
                rdr.SetMilestone();
                _chunk.StartNew();
                _chunk.Read(rdr);
                _chunk.AfterAutomaticRead(rdr);
                return _chunk;
            }
            catch (ParserEOFException)
            {
                if (_repeat == ChunkListRepeat.ToEOF)
                {
                    // EOF is not an error when we repeat to EOF
                    _hasData = false;
                }
                else
                {
                    throw;
                }
            }
            catch (BadMagicException ex)
            {
                if (_repeat == ChunkListRepeat.ByMagic)
                {
                    // Bad Magic is not an error when we repeat by Magic, we just roll back
                    _hasData = false;
                    rdr.GoToMilestone();
                }
                else
                {
                    Console.WriteLine(ex.Message);
                    throw;
                }
            }

            return null; // Not so elegant, the detection logic should be in HasData
        }

        public override void StartNew()
        {
            _chunk.StartNew();
        }

        public override void Read(FileReader rdr)
        {
            if (_repeat == ChunkListRepeat.ToCount)
            {
                Console.WriteLine($"Reading {_count} chunks in a list:");
                for (int i=0; i < _count; i++)
                {
                    _chunk = ReadOne(rdr);
                }

            }
            else
            {
                while ((_chunk = ReadOne(rdr)) != null)
                    Console.WriteLine("Read a chunk in a list");
            }
        }

        public bool HasData => _hasData;
    }

    public enum ChunkListRepeat
    {
        ToEOF,
        ByMagic,
        ToCount
    }
}
