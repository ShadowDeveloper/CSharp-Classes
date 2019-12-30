using ByteBank.Funcionarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ByteBank
{
    class GerenciadorBonificacao
    {
        private double _totalBonificacao;

        public void Registrar(Funcionario funcionario)
        {
            _totalBonificacao += funcionario.GetBonificacao();
        }

        public void Registrar(Diretor diretor) //Isso  se chama sobrecarga, podemos ter nomes iguais para os métodos mas os arumentos devem ser de tipos diferentes
        {
            _totalBonificacao += diretor.GetBonificacao();
        }

       public double GetTotalBonificacao()
        {
            return _totalBonificacao;
        }
    }
}
