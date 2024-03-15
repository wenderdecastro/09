using System;
using System.Collections.Generic;
using System.Text;
using wendoAPI;

namespace wendoAPP.ViewModels
{
    public class RelatosViewModel
    {
        public int id { get; set; }
        public string relato { get; set; }
        public string imagem { get; set; }
        public decimal latitude { get; set; }
        public decimal longitude { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        public string telefone { get; set; }
    }
}
