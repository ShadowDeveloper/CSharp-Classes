using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _01_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            ContaCorrente contaDaGrabriela = new ContaCorrente();

            contaDaGrabriela.titular = "Gabriela";
            contaDaGrabriela.agencia = 863;
            contaDaGrabriela.numero = 863452;
            contaDaGrabriela.saldo = 100.45;

            Console.WriteLine("Titular " + contaDaGrabriela.titular);
            Console.WriteLine("Agencia " + contaDaGrabriela.agencia);
            Console.WriteLine("Numero " + contaDaGrabriela.numero);
            Console.WriteLine("Saldo " + contaDaGrabriela.saldo);

            contaDaGrabriela.saldo += 100.54;

            Console.WriteLine("Novo saldo " + contaDaGrabriela.saldo);

            Console.ReadLine();
        }
    }
}
