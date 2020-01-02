using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _03_ByteBank.Funcionarios
{
    class Diretor : Funcionario // Isso se chama herança : Funcionario. O diretor também tem Nome, CPF e Salario
    {

        public Diretor(string cpf) : base(cpf)
        {
            Console.WriteLine("Criando DIRETOR");
        }

        public override double GetBonificacao()
        { 
            return Salario + base.GetBonificacao();
        }
    }
}
