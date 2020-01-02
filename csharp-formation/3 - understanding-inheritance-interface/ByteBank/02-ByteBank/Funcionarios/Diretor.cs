using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_ByteBank.Funcionarios
{
    class Diretor : Funcionario // Isso se chama herança : Funcionario. O diretor também tem Nome, CPF e Salario
    {
        public override double GetBonificacao()
        { 
            return Salario + base.GetBonificacao();
        }
    }
}
