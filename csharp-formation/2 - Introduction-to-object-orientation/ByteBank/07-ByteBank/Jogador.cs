using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _07_ByteBank
{
    class Jogador
    {

        public static int TotalJogadores { get; private set; }

        public Jogador()
        {
            TotalJogadores++;
        }

    }
}
