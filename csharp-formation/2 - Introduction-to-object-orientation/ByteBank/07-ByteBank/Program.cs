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
            ContaCorrente conta = new ContaCorrente(8555,544788947);
            Console.WriteLine("Ag: " + conta.Agencia);
            Console.WriteLine("Num Conta: " + conta.Numero);
            Console.WriteLine(ContaCorrente.TotalDeContasCriadas);
            ContaCorrente contaDoRodrigo = new ContaCorrente(867, 4554477);
            Console.WriteLine(ContaCorrente.TotalDeContasCriadas);
            Console.ReadLine();
        }
    }
}
