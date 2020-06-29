import { Cliente } from "./Cliente.js";

export class ContaCorrente {
    static numeroDeContas = 0;
    agencia;

    _cliente;
    _saldo = 0;
    /*#saldo Jogo da velha permite que a propriedade seja
     privada, de acesso somente da classe.*/


    set cliente(value) {
        if (value instanceof Cliente) {
            this._cliente = value;
        }
    }

    get cliente() {
        return this._cliente;
    }

    get saldo() {
        return this._saldo;
    }

    constructor(cliente, agencia, saldoConta) {
        this.agencia = agencia;
        this.cliente = cliente;
        this._saldo = saldoConta;
        ContaCorrente.numeroDeContas++;
    }

    sacar(valor) {
        if (this._saldo >= valor) {
            this._saldo -= valor;
            return valor;
        }
    }

    depositar(valor) {
        if (valor <= 0) {
            return;
        }
        this._saldo += valor;
    }

    transferir(valor, conta) {
        const valorSacado = this.sacar(valor);
        conta.depositar(valorSacado);
    }
}