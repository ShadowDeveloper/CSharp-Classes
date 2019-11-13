using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _07_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(ContaCorrente.TotalDeContasCriadas);
            ContaCorrente conta = new ContaCorrente(867, 4554466);
            Console.WriteLine("Ag: " + conta.Agencia);
            Console.WriteLine("Num Conta: " + conta.Numero);
            ContaCorrente contaDoRodrigo = new ContaCorrente(867, 4554477);
            ContaCorrente contaDaGabriela = new ContaCorrente(867, 4554488);
            Console.WriteLine(ContaCorrente.TotalDeContasCriadas);

            new Jogador();
            new Jogador();
            new Jogador();
            new Jogador();
            new Jogador();

            Console.WriteLine("Jogador " + Jogador.TotalJogadores);
            Console.ReadLine();

        }
    }
}
