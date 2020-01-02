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

            Funcionario funcionario = new Funcionario("39965554452")
            {
                Nome = "Rodrgo",
                Salario = 2000
            };
            
            Console.WriteLine("Total de Funcionários: " + Funcionario.TotalDeFuncionarios);

            Funcionario diretor = new Diretor("29965554452")
            {
                Nome = "Ramirez",
                Salario = 5000,
            };

            Console.WriteLine("Total de Funcionários: " + Funcionario.TotalDeFuncionarios);


            Console.WriteLine("Funcionario " + funcionario.Nome);
            Console.WriteLine("Bonificacao funcionario: " + funcionario.GetBonificacao());

            gerenciador.Registrar(funcionario);

            Console.WriteLine("=========================");



            Console.WriteLine("Diretor " + diretor.Nome);
            gerenciador.Registrar(diretor);
            Console.WriteLine("Bonificacao diretor: " + diretor.GetBonificacao());
            Console.WriteLine("=========================");



            Console.WriteLine("Total da bonificacao funcionários " + "R$" + gerenciador.GetTotalBonificacao());
            Console.WriteLine("=========================");

            Funcionario diretorTeste = diretor;

            Console.WriteLine("Bonificação de uma referência de Diretor: " + diretor.GetBonificacao());
            Console.WriteLine("Bonificação de uma referência de Funcionario: " + diretorTeste.GetBonificacao());


            Console.ReadKey();

        }
    }
}
