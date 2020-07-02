import { Cliente } from "../Cliente.js";

/* Uma classe abstrata é uma classe que deve
somente ser herdada e nunca instanciada.*/

export class Conta {

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

    constructor(saldoInicial, cliente, agencia) {

        if (this.constructor == Conta) {
            throw new Error("você não deve instanciar a classe Conta. Está é uma classe abstrata!");
        }

        this._saldo = saldoInicial;
        this._cliente = cliente;
        this._agencia = agencia;
    }

    //métodos

    sacar(valor) { // Método abastrato é feito para ser sobrescrito
        throw new Error("O método sacar é abstrato, sobrescreva o mesmo na classe utilizada.");
    }

    _sacar(valor, taxa) {
        const valorSacadoComTaxa = taxa * valor;
        if (this._saldo >= valorSacadoComTaxa) {
            this._saldo -= valorSacadoComTaxa;
            return valorSacadoComTaxa;
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