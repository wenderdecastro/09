using System;
using System.Collections.Generic;
using System.Text;

namespace MobileMG.Models
{
    public class Relatos
    {
        public int id { get; set; }
        public string relato { get; set; }
        public string imagem { get; set; }
        public decimal latitude { get; set; }
        public decimal longitude { get; set; }
        public Nullable<int> usuarioid { get; set; }

        public virtual Usuarios Usuario { get; set; }
    }
}
