using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _03_ByteBank.Funcionarios;


namespace _03_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {

            GerenciadorBonificacao gerenciador = new GerenciadorBonificacao();

            Funcionario funcionario = new Funcionario(2000,"39965554452")
            {
                Nome = "Rodrgo",
            };
            
            Funcionario diretor = new Diretor(5000, "29965554452")
            {
                Nome = "Ramirez",
            };


            Console.WriteLine("Funcionario: " + funcionario.Nome);
            Console.WriteLine("Funcionario Salario: " + funcionario.Salario);
            funcionario.AumentarSalario();
            Console.WriteLine("Novo Salario funcionario: " + funcionario.Salario);
            Console.WriteLine("Bonificacao funcionario: " + funcionario.GetBonificacao());
            gerenciador.Registrar(funcionario);

            Console.WriteLine(" ");
            Console.WriteLine("=========================");
            Console.WriteLine(" ");
            Console.WriteLine("Diretor: " + diretor.Nome);
            Console.WriteLine("Diretor Salario: " + diretor.Salario);
            diretor.AumentarSalario();
            Console.WriteLine("Novo Salario Diretor: " + diretor.Salario);
            Console.WriteLine("Bonificacao diretor: " + diretor.GetBonificacao());
            gerenciador.Registrar(diretor);


            Console.WriteLine(" ");
            Console.WriteLine("=========================");
            Console.WriteLine(" ");
            Console.WriteLine("Total de Funcionários: " + Funcionario.TotalDeFuncionarios);
            Console.WriteLine("Total da bonificacao funcionários " + "R$" + gerenciador.GetTotalBonificacao());


            Console.ReadKey();

        }
    }
}
