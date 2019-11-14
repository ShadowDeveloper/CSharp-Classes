using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ByteBank.Funcionarios;

namespace ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            Funcionario funcionario = new Funcionario();

            funcionario.Nome = "Rodrgo";
            funcionario.CPF = "39965554452";
            funcionario.Salario = 2000;

            Console.WriteLine(funcionario.Nome);
            Console.WriteLine(funcionario.GetBonificacao());
        }
    }
}
