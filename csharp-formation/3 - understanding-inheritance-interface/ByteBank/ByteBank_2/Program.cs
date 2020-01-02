using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ByteBank_2.Funcionarios;


namespace ByteBank_2
{
    class Program
    {
        static void Main(string[] args)
        {

            GerenciadorBonificacao gerenciador = new GerenciadorBonificacao();

            Funcionario funcionario = new Funcionario()
            {
                Nome = "Rodrgo",
                CPF = "39965554452",
                Salario = 2000
            };

            Console.WriteLine("Funcionario " + funcionario.Nome);
            Console.WriteLine("Bonificacao funcionario: " + funcionario.GetBonificacao());

            gerenciador.Registrar(funcionario);

            Console.WriteLine("=========================");

            Diretor diretor = new Diretor()
            {
                Nome = "Ramirez",
                CPF = "29965554452",
                Salario = 5000,
            };

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
