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

        public virtual void AfterRead(FileReader rdr)
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
            catch (BadMagicException ex)
            {
                if (_repeat == ChunkListRepeat.ByMagic)
                {
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

        public bool HasData => _hasData;
    }

    public enum ChunkListRepeat
    {
        ToEOF,
        ByMagic
    }
}
