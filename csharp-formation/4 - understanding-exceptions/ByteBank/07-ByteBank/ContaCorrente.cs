using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _07_ByteBank
{
    public class ContaCorrente
    {
        private Cliente _titular;
        private int _agencia;
        private double _saldo = 100.45; //Underline para quando campo é privado e local
        public Cliente Titular { get; set; }

        public int ContatadorDeSaquesNaoPermitidos { get; private set; }
        public int ContadorDeTransferenciasNaoPermitidas { get; private set; }
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
            TotalDeContasCriadas++;
            TaxaOperacao = 30 / TotalDeContasCriadas;
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

        public void Sacar(double valor)
        {

            if (valor < 0)
            {
                throw new ArgumentException("Valor inválido para saque", nameof(valor));
            }

            if (_saldo < valor)
            {
                ContatadorDeSaquesNaoPermitidos++;
                throw new SaldoInsuficienteException(Saldo, valor);
                //throw new Sal doInsuficienteException("Saldo insuficiente para o saque no valor de " + valor);
            }
            _saldo -= valor;
        }

        public void Depositar(double valor)
        {
            _saldo += valor;
        }

        public void Transferir(double valor, ContaCorrente ContaDestino)
        {
            if (valor < 0)
            {
                throw new ArgumentException("valor inválido para a transferência", nameof(valor));
            }

            try
            {
                Sacar(valor);
            }
            catch (SaldoInsuficienteException ex)
            {
                ContadorDeTransferenciasNaoPermitidas++;
                throw;
            }


            ContaDestino.Depositar(valor);
        }

    }
}
