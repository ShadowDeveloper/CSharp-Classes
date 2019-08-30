using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {

            ContaCorrente contaDoBruno = new ContaCorrente
            {
                titular = "Bruno"
            };

            bool resultadoSaque = contaDoBruno.Sacar(200.52);

            if (resultadoSaque)
            {
                Console.WriteLine("Saldo da conta do Bruno: " + contaDoBruno.saldo);
            } else
            {
                Console.WriteLine("O valor para saque é maior que o saldo disponivel");
            }

            contaDoBruno.Depositar(1000);
            Console.WriteLine("Conta com deposito: " + contaDoBruno.saldo);


            ContaCorrente contaDoRodrigo = new ContaCorrente
            {
                titular = "Rodrigo",
                saldo = 9000.40,
            };

            contaDoBruno.Transferir(500, contaDoRodrigo);

            Console.WriteLine("Conta do Rodrigo " + contaDoRodrigo.saldo);

            contaDoRodrigo.Transferir(200, contaDoBruno);
            Console.WriteLine("Conta do Rodrigo para conta do bruno " + contaDoBruno.saldo);
            Console.ReadLine();

        }
    }
}
