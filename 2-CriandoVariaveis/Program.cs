using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_CriandoVariaveis
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando Projeto 2 - Executando Variaveis");

            int idade = 26;
            Console.WriteLine("idade: " + idade);

            idade = 10 + 5;
            Console.WriteLine("idade somado: " + idade);

            idade = (10 + 5) * 2;
            Console.WriteLine("idade multiplicando: " + idade);

            Console.WriteLine("Execução finalizada, tecle enter para encerrar");
            Console.ReadLine();
        }
    }
}
