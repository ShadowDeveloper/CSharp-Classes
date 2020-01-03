using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _07_ByteBank.Funcionarios;
using _07_ByteBank.Sistemas;

namespace _07_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            //CalcularBonificacao();
            UsarSistema();
            Console.ReadKey();
        }

        public static void UsarSistema()
        {
            SistemaInterno sistemaInterno = new SistemaInterno();

            Diretor roberta = new Diretor("455.566.554-66");
            roberta.Senha = "123";
            sistemaInterno.Logar(roberta, "123");
            sistemaInterno.Logar(roberta, "abc");

            Console.WriteLine(" ");
            Console.WriteLine("=========================");
            GerenteDeConta camila = new GerenteDeConta("455.566.554-66");
            camila.Senha = "abs;";
            sistemaInterno.Logar(camila, "123");
            sistemaInterno.Logar(camila, "abs;");

            Console.WriteLine(" ");
            Console.WriteLine("=========================");
            ParceiroComercial parceiroComercial = new ParceiroComercial();
            parceiroComercial.Senha = "def";
            sistemaInterno.Logar(parceiroComercial, "def");
            sistemaInterno.Logar(parceiroComercial, "abs;");
        }

        public static void CalcularBonificacao()
        {
            GerenciadorBonificacao gerenciadorBonificacao = new GerenciadorBonificacao();

            //Funcionario teste = new Funcionario(10000, "ddd");

            Diretor roberta = new Diretor("333.099.885-44");
            roberta.Nome = "Roberta";

            Designer pedro = new Designer("333.099.885-44");
            pedro.Nome = "Pedro";

            Auxiliar igor = new Auxiliar("333.099.885-44");
            pedro.Nome = "Igor";

            GerenteDeConta camila = new GerenteDeConta("455.566.554-66");
            camila.Nome = "Camila";

            gerenciadorBonificacao.Registrar(roberta);
            gerenciadorBonificacao.Registrar(pedro);
            gerenciadorBonificacao.Registrar(igor);
            gerenciadorBonificacao.Registrar(camila);

            Console.WriteLine("Total de bonificações do mês " +
                gerenciadorBonificacao.GetTotalBonificacao()
            );

        }
    }
}
