using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _06_ByteBank.Funcionarios;

namespace _06_ByteBank
{
    class GerenciadorBonificacao
    {
        private double _totalBonificacao;

        public void Registrar(Funcionario funcionario)
        {
            _totalBonificacao += funcionario.GetBonificacao();
        }

        public double GetTotalBonificacao()
        {
            return _totalBonificacao;
        }
    }
}
