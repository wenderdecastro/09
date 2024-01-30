using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace TaskoolMobile.ViewModels
{
    public class ProjetoVM
    {
        public int Codigo { get; set; }
        public string Nome { get; set; }
        public string TextoPendentes { get; set; }
        public int Pendentes { get; set; }

        public bool Completo {  get; set; }
        public bool EmAndamento { get; set; }

        public ObservableCollection<TarefasVM> ListaTarefas { get; set; } = new ObservableCollection<TarefasVM>();
    }
}
