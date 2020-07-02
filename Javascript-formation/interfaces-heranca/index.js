import { Cliente } from './Cliente.js';
import { ContaCorrente } from './Conta/ContaCorrente.js';
import { ContaPoupanca } from './Conta/ContaPoupanca.js';
import { ContaSalario } from './Conta/ContaSalario.js';

const cliente1 = new Cliente('Rodrigo', 39906525835, 491356658);
const contaCliente1 = new ContaCorrente(cliente1, 1001);
const contaPoupanca1 = new ContaPoupanca(50, cliente1, 1001);
const contaSalario1 = new ContaSalario(cliente1);
contaSalario1.depositar(2000);
contaSalario1.sacar(1500);

console.log(contaSalario1);
