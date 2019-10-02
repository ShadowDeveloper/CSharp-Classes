using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _06_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {

            ContaCorrente conta = new ContaCorrente {};
            //conta.Sacar(50.26);
            conta.DefinirSaldo(-10);
            Console.WriteLine(conta.ObterSaldo());
            Console.ReadKey();

        }
    }
}
