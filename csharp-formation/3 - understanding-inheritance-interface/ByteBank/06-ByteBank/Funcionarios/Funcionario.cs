using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _06_ByteBank.Funcionarios
{
    public abstract class Funcionario
    {
        public static int TotalDeFuncionarios { get; private set; }
        public string Nome { get; set; }
        public string CPF { get; private set; }
        public double Salario { get; protected set; }

        public Funcionario(double salario, string cpf)
        {
            Salario = salario;
            CPF = cpf;
            TotalDeFuncionarios++;

            Console.WriteLine("CRIANDO FUNCIONARIO");
        }

        public abstract void AumentarSalario();

        public abstract double GetBonificacao();

    }
}
