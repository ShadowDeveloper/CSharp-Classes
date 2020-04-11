using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _08_ByteBank
{
    public class LeitorDeArquivos: IDisposable
    {
        public string Arquivo { get; set; }

        public LeitorDeArquivos(string arquivo)
        {
            Arquivo = arquivo;

            //throw new FileNotFoundException();

            Console.WriteLine("Abrindo arquivo: " + arquivo);
        }

        public string LerProximaLinha()
        {
            Console.WriteLine("Lendo lina...");

            throw new IOException();

            return "Linha do arquivo";
        }

        public void Fechar()
        {
            Console.WriteLine("Fechando arquivo.");
        }

        public void Dispose()
        {
            Console.WriteLine("Fechando arquivo");
            //throw new NotImplementedException();
        }
    }
}
