using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace _06_ByteBank
{
    public class ContaCorrente
    {
        public Cliente _titular;
        public int agencia;
        public int numero;
        private double _saldo = 100.45; //Underline para quando campo é privado e local
        public Cliente Titular {get; set;}

        public double Saldo
        {
            get
            {
                return _saldo;
            }
            set
            {
                if (value >= 0)
                {
                    _saldo = value;
                }
                return;
            }
        }


        public void SetSaldo(double novoSaldo)
        {
            if (novoSaldo >= 0)
            {
                _saldo = novoSaldo;
            }
        }

        public double GetSaldo()
        {
            return _saldo;
        }

        public bool Sacar(double valor)
        {
            if (_saldo < valor)
            {
                return false;
            }
            _saldo -= valor;
            return true;
        }

        public void Depositar(double valor)
        {
            _saldo += valor;
        }

        public bool Transferir(double valor, ContaCorrente ContaDestino)
        {
            if (_saldo < valor)
            {
                return false;
            }
            _saldo -= valor;
            ContaDestino.Depositar(valor);
            return true;
        }

    }
}