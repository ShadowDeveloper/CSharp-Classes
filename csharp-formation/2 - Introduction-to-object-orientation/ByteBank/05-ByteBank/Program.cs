using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _05_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            Cliente grabriela = new Cliente
            {
                nome = "Gabriela",
                cpf = "39906525835",
                profissao = "Gerente de supermercados"
            };

            ContaCorrente conta = new ContaCorrente
            {
                titular = grabriela,
                agencia = 563,
                numero = 5634524,
            };

            conta.titular.nome = "Gabriela Costa";

            Console.WriteLine(grabriela.nome);
            Console.WriteLine(conta.titular.nome);
            //Console.ReadKey();
        }
    }
}
