using System;
using System.Collections.Generic;
using System.Reflection.Metadata;
using System.Text;

namespace FileParser
{
    public class FileDumper
    {
        int _col = 0;
        public bool Decimal { get; set; } = false;

        public HexDumperConsole _console = new HexDumperConsole();
        private Queue<Message> _messages = new Queue<Message>();

        public HexDumperConsole Console
        {
            get { return _console; }
            set { _console = value; }
        }

        private bool _freeze = false;

        public FileDumper()
        {
        }

        public void Freeze()
        {
            if (_freeze)
                throw new ApplicationException("Freezing when already frozen. Check your logic please.");

            _freeze = true;
        }

        public void Discard()
        {
            if (!_freeze)
                throw new ApplicationException("Calling Discard() when not frozen. Check your logic please.");

            _col = 0;
            _messages.Clear();
        }

        public void Unfreeze()
        {
            if (!_freeze)
                throw new ApplicationException("Unfreezing when not frozen. Check your logic please.");
            
            _freeze = false;

            while (_messages.Count > 0)
            {
                var m = _messages.Dequeue();
                switch (m.type)
                {
                    case MessageType.NewItemMessage:
                        _console.NewItem();
                        break;
                    case MessageType.OnByteMessage:
                        _console.OnByte(m.b, m.pos);
                        break;
                    case MessageType.OnInfoMessage:
                        _console.OnInfo(m.message, m.pos);                        
                        break;
                }
            }
        }

        public void OnByte(byte b, long pos)
        {
            if (_freeze)
                _messages.Enqueue(new Message()
                {
                    type = MessageType.OnByteMessage,
                    b = b,
                    pos = pos
                });
            else
            {
                _console.OnByte(b, pos);
            }
        }

        public void OnInfo(string s)
        {
            if (_freeze)
                _messages.Enqueue(new Message() 
                { 
                    type = MessageType.OnInfoMessage, 
                    message = s,
                    pos = 0
                });
            else
                _console.OnInfo(s, 0);
        }

        public void NewItem()
        {
            if (_freeze)
                _messages.Enqueue(new Message()
                {
                    type = MessageType.NewItemMessage,
                    pos = 0
                });
            else
                _console.NewItem();
        }
    }

    public struct Message 
    {
        public MessageType type;
        public long pos;
        public byte b;
        public string message;
    }

    public enum MessageType
    {
        OnByteMessage,
        OnInfoMessage,
        NewItemMessage
    }

}
