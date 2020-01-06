using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            //ContaCorrente conta = new ContaCorrente(867, 4554466);
            //Console.WriteLine(ContaCorrente.TaxaOperacao);

            try
            {
                Metodo();
            }
            catch (DivideByZeroException err)
            {
                Console.WriteLine(err.Message);
                Console.WriteLine(err.StackTrace);
            };

            Console.ReadKey();
        }

        private static void Metodo()
        {
            try
            {
                TestaDivisao(0);
            }
            catch (NullReferenceException err)
            {

                Console.WriteLine(err.Message);
                Console.WriteLine(err.StackTrace);
            }
        }

        private static void TestaDivisao(int divisor)
        {
            int resultado = Dividir(10, divisor);

            Console.WriteLine("Resultado da divisão de 10 por " + divisor + " é " + resultado);
        }

        private static int Dividir(int numero, int divisor)
        {

            ContaCorrente conta = null;
            Console.WriteLine(conta.Saldo);

            return numero / divisor;
        }
    }
}
