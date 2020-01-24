using System;
using System.Collections.Generic;
using System.Text;

using System.IO;
using System.Reflection;
namespace FileParser
{
    public class Chunk
    {
        public Position Position; // Not yet used
        public Size Size;           // dito.

        public Chunk()
        {
            if (Parser.Debug) Console.WriteLine("Chunk Constructor!");
        }

        public virtual void StartNew()
        { }

        public virtual void BeforeAutomaticRead(FileReader rdr)
        { }

        public virtual void ReadAutomatic(FileReader rdr)
        { }

        public virtual void AfterAutomaticRead(FileReader rdr)
        { }

        public virtual void Read(FileReader rdr)
        {
            BeforeAutomaticRead(rdr);
            ReadAutomatic(rdr);
            AfterAutomaticRead(rdr);
        }

        public void SetupChunkFields()
        {
            Type type = this.GetType();
            if (Parser.Debug) Console.WriteLine($"SetupChunkFields for {type.Name}");

            FieldInfo[] fields = type.GetFields(BindingFlags.Instance | BindingFlags.DeclaredOnly| BindingFlags.NonPublic | BindingFlags.Public); //.GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (FieldInfo field in fields)
            {
                var otto = field.GetValue(this);
                if (otto == null)
                    if (field.FieldType.IsSubclassOf(typeof(ChunkField)))
                    {
                        if (Parser.Debug) Console.WriteLine("Fixing construction for: " + field.Name);
                        var fieldType = field.FieldType;
                        var kakan = fieldType.InvokeMember("", BindingFlags.CreateInstance, null, null, null);
                        field.SetValue(this, kakan);
                    }
            }
        }
    }

    public class SimpleChunk : Chunk
    {
        public List<ChunkField> AutomaticFields;

        public SimpleChunk()
        {
            if (Parser.Debug) Console.WriteLine("SimpleChunk Constructor!");
            AutomaticFields = new List<ChunkField>();
        }

        public override void StartNew()
        {
            foreach (var f in AutomaticFields) // TODO: Should be ALL Fields (or None. Right now it's unnecessary)
                f.StartNew();
        }

        public override void ReadAutomatic(FileReader rdr)
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

    public class ChunkList<T> : Chunk  where T : SimpleChunk, new()
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
                _chunk.Read(rdr);
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

        public void ReadAll(FileReader rdr)
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

    public class PolyChunk : Chunk
    {
        private List<Type> _validTypes = new List<Type>();
        private Chunk _chunk = null;

        public PolyChunk()
        {

        }

        public void RegisterType(Type t)
        {
            _validTypes.Add(t);
        }

        public Type FallbackType { get; set; } = null;

        public override void Read(FileReader rdr)
        {
            rdr.SetMilestone();
            Parser.Dumper.NewItem();
            Parser.Dumper.Freeze();

            foreach (var type in _validTypes)
            {
                _chunk = (Chunk) type.GetConstructor(Type.EmptyTypes).Invoke(null);

                try
                {
                    _chunk.Read(rdr);

                    Parser.Dumper.Unfreeze();
                    return;
                }
                catch (BadMagicException ex)
                {
                    string kalle = ex.Message;

                    // Bad Magic is not an error, we just roll back and discard the dumper text
                    rdr.GoToMilestone();
                    Parser.Dumper.Discard();
                }
            }

            // Fallback type, must work or we´ll throw
            Parser.Dumper.Unfreeze();

            if (FallbackType == null)
                throw new BadMagicException("No valid chunk identified");

            _chunk = (Chunk)FallbackType.GetConstructor(Type.EmptyTypes).Invoke(null);

            _chunk.Read(rdr);
        }

        public Chunk CurrentChunk => _chunk;

        public Type CurrentType => _chunk?.GetType();
    }
}
