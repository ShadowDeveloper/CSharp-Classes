using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _07_ByteBank.Sistemas;

namespace _07_ByteBank.Funcionarios
{
    class GerenteDeConta : FuncionarioAutenticavel
    {

        public GerenteDeConta(string cpf) : base(4000, cpf)
        {
        }

        public override void AumentarSalario()
        {
            Salario *= 1.05;
        }

        public override double GetBonificacao()
        {
            return Salario * .25;
        }
    }
}
