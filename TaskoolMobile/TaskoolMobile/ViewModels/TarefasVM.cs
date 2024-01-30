using System;
using System.Collections.Generic;
using System.Text;

namespace TaskoolMobile.ViewModels
{
    public class TarefasVM
    {
        public int Id { get; set; }
        public int CodProjeto { get; set; }
        public bool isConcluida { get; set; }
        public string Texto { get; set; }
        public int CodResponsavel { get; set; }
        public DateTime DataAtual { get; set; }


    }
}
