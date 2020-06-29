import { Cliente } from './Cliente.js';
import { ContaCorrente } from './ContaCorrente.js';

const cliente1 = new Cliente('Rodrigo', 39906525835, 491356658);
const contaCorrenteCliente1 = new ContaCorrente(cliente1, 1001, 550);
// contaCorrenteCliente1.saldo = 1000;

const cliente2 = new Cliente('Alice', 89906525835, 591356658);
const contaCorrenteCliente2 = new ContaCorrente(cliente2, 1002, 1550);
contaCorrenteCliente2.transferir(628, contaCorrenteCliente1);

console.log(contaCorrenteCliente1.cliente);
console.log(contaCorrenteCliente1.saldo);

console.log(ContaCorrente.numeroDeContas);

