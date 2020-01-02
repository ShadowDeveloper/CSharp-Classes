using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _03_ByteBank.Funcionarios
{
    class Diretor : Funcionario // Isso se chama herança : Funcionario. O diretor também tem Nome, CPF e Salario
    {

        public Diretor(double salario, string cpf) : base(salario, cpf)
        {
        }

        public override void AumentarSalario()
        {
            Salario *= 1.15;
        }

        public override double GetBonificacao()
        { 
            return Salario + base.GetBonificacao();
        }
    }
}
