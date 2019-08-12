public class ContaCorrente
{
    public int agencia;
    public int numero;
    public double saldo = 100.45;
    public string titular;

    public bool Sacar(double valor)
    {
        if (this.saldo < valor)
        {
            return false;
        } else
        {
            this.saldo -= valor;
            return true;
        }
    }

}