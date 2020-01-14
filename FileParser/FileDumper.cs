using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class FileDumper
    {
        int _col = 0;
        public bool Decimal { get; set; } = false;

        private HexDumperConsole _console = new HexDumperConsole();
        private Queue<Message> _messages = new Queue<Message>();

        public bool Freeze { get; set; } = false;

        public FileDumper()
        {
        }

        public void Restart()
        {
            _col = 0;
            _messages.Clear();
        }

        public void Flush()
        {
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
            if (Freeze)
                _messages.Enqueue(new Message() 
                { 
                    type = MessageType.OnByteMessage,
                    b = b, 
                    pos = pos
                });
            else
                _console.OnByte(b, pos);
        }

        public void OnInfo(string s)
        {
            if (Freeze)
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
            if (Freeze)
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
