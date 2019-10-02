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

            ContaCorrente conta = new ContaCorrente();
            Cliente cliente = new Cliente();
            conta.Saldo = 10;
            Console.WriteLine("Saldo da conta: " + conta.Saldo);

            cliente.nome = "Rodrigo Bruno de Souza";
            cliente.cpf = "399.100.258-35";
            cliente.profissao = "Garoto de programa";

            conta.Titular = cliente;

            Console.WriteLine("Nome do cliente: " + conta.Titular.nome);
            Console.WriteLine("CPF do cliente: " + conta.Titular.cpf);
            Console.WriteLine("Profissão do cliente: " + conta.Titular.profissao);

            Console.ReadKey();

        }
    }
}
