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

            cliente.Nome = "Rodrigo Bruno de Souza";
            cliente.CPF = "399.100.258-35";
            cliente.Profissao = "Garoto de programa";

            conta.Titular = cliente;

            Console.WriteLine("Nome do cliente: " + conta.Titular.Nome);
            Console.WriteLine("CPF do cliente: " + conta.Titular.CPF);
            Console.WriteLine("Profissão do cliente: " + conta.Titular.Profissao);

            Console.WriteLine("===============================");


            Animal cachorro = new Animal() {
                Dono = cliente,
                Nome = "Pipico",
                NumeroDeRegistro = 15223554
            };

            Console.WriteLine("Informações do Animal");
            Console.WriteLine(" ");
            Console.WriteLine("Dono Nome: " + cachorro.Dono.Nome);
            Console.WriteLine("Animal nome: " + cachorro.Nome);
            Console.WriteLine("Animal numero de registro: " + cachorro.NumeroDeRegistro);

            Console.ReadKey();

        }
    }
}
