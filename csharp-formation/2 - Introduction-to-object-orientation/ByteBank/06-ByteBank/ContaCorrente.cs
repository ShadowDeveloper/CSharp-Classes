using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace _06_ByteBank
{
    public class ContaCorrente
    {
        public Cliente titular;
        public int agencia;
        public int numero;
        private double saldo = 100.45;

        public void DefinirSaldo(double novoSaldo)
        {
            if (novoSaldo >= 0)
            {
                this.saldo = novoSaldo;
            }
        }

        public double ObterSaldo()
        {
            return saldo;
        }

        public bool Sacar(double valor)
        {
            if (this.saldo < valor)
            {
                return false;
            }
            this.saldo -= valor;
            return true;
        }

        public void Depositar(double valor)
        {
            this.saldo += valor;
        }

        public bool Transferir(double valor, ContaCorrente ContaDestino)
        {
            if (this.saldo < valor)
            {
                return false;
            }
            this.saldo -= valor;
            ContaDestino.Depositar(valor);
            return true;
        }

    }
}