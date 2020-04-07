using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _07_ByteBank
{
    public class OperacaofinanceiraException : Exception
    {
        public OperacaofinanceiraException()
        {

        }

        public OperacaofinanceiraException(string mensagem)
            : base(mensagem)
        {

        }

        public OperacaofinanceiraException(string mensagem, Exception excecaoInterna)
            : base(mensagem, excecaoInterna)
        {

        }
    }
}
