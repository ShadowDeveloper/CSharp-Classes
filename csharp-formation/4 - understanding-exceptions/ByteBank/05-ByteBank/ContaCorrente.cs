using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _05_ByteBank
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
        public ContaCorrente(int numeroAgeciaAgencia, int numeroConta)
        {
            string nomeDoArgumento = nameof(numeroAgeciaAgencia); //Obtem o nome do argumento então o valor desta variavel será "numeroAgeciaAgencia"

            if (numeroAgeciaAgencia <= 0 && numeroConta != 0)
            {
                throw new ArgumentException("O argumento Agencia deve ser maior que 0.", nameof(numeroAgeciaAgencia));
            }
            else if (numeroConta <= 0 && numeroAgeciaAgencia != 0)
            {
                throw new ArgumentException("O argumento numero deve ser maior que 0.", nameof(numeroConta)); ;
            }
            else if (numeroAgeciaAgencia <= 0 && numeroConta <= 0)
            {
                throw new ArgumentException("Os argumentos numero e agencia devem ser maior que 0.", "agenciaENumero");
            }

            Agencia = numeroAgeciaAgencia;
            Numero = numeroConta;
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
