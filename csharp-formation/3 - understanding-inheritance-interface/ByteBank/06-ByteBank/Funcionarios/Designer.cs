using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _06_ByteBank.Funcionarios
{
    class Designer : Funcionario
    {

        public Designer(string cpf) : base(3000, cpf)
        {
        }

        public override void AumentarSalario()
        {
            Salario *= 1.1;
        }

        public override double GetBonificacao()
        {
            return Salario * .25;
        }
    }
}
