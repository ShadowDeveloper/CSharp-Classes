/* 
    Ser autenticavel significa ter um método autenticar 

    Javascript é interpretado e não é fortemente tipado. 
    Então quando usamos polimorfismo com ele utilizamos um tipo de tipagem chamado Duck Type
    https://pt.wikipedia.org/wiki/Duck_typing
*/

export class SistemaAutenticacao {
    static login(autenticavel, senha) {
        if (SistemaAutenticacao.ehAutenticavel(autenticavel)) {
            return autenticavel.autenticar(senha);
        }
        return false;
    }

    static ehAutenticavel(autenticavel) {
        return "autenticar" in autenticavel &&
            autenticavel.autenticar instanceof Function;
    }

}