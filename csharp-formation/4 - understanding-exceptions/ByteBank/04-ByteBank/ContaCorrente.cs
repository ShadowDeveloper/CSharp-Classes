using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_ByteBank
{
    public class ContaCorrente
    {
        private Cliente _titular;
        private int _agencia;
        private double _saldo = 100.45; //Underline para quando campo é privado e local
        public Cliente Titular { get; set; }

        public static int TotalDeContasCriadas { get; private set; }

        public static double TaxaOperacao { get; private set; }

        public int Numero { get; }
        public int Agencia { get; }

        //Constructor
        public ContaCorrente(int agencia, int numero)
        {
            if (agencia <= 0 || numero <= 0)
            {
                Console.WriteLine(Titular.Nome);
            }

            Agencia = agencia;
            Numero = numero;
            TaxaOperacao = 30 / TotalDeContasCriadas;
            TotalDeContasCriadas++;
        }
        //Constructor

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
