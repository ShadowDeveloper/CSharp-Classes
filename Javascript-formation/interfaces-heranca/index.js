import { Cliente } from './Cliente.js';
import { Gerente } from './Funcionario/Gerente.js';
import { Diretor } from './Funcionario/Diretor.js';
import { SistemaAutenticacao } from './SistemaAutenticacao.js';


const diretor = new Diretor("Rodrigo", 10000, 123456779909);
diretor.cadastrarSenha("teste");
const gerente = new Gerente("Rafael", 6000, 567456779909);
gerente.cadastrarSenha("123");

const cliente = new Cliente("Lais", 3990558424, "4936654");

const estadoLogadoDiretor = SistemaAutenticacao.login(diretor, "teste");
const estadoLogadoGerente = SistemaAutenticacao.login(gerente, "123");

const estadoLogadoCliente = SistemaAutenticacao.login(cliente, "123");

console.log(estadoLogadoDiretor, estadoLogadoGerente, estadoLogadoCliente);

