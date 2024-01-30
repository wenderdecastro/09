using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace TaskoolMobile.ViewModels
{
    public class BaseVM
    {
        public ObservableCollection<ProjetoVM> ListaProjetos { get; set; } = new ObservableCollection<ProjetoVM>();

    }
}
