using System;
using System.Collections.Generic;
using System.Text;

namespace FileParser
{
    public class FileParserException : ApplicationException
    {
        public FileParserException() : base() { }
        public FileParserException(string message) : base(message) { }
    }

    public class ParserEOFException : FileParserException
    { }

    public class BadMagicException : FileParserException
    {
        public BadMagicException(string message) : base(message) { }
    }
}
