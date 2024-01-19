using System;
using System.Collections.Generic;
using System.Text;

namespace MobileMG.Models
{
    public class RelatosViewModel
    {
        public int Id { get; set; }
        public string Relato { get; set; }
        public string Imagem { get; set; }
        public string Latitude { get; set; }
        public string Longitude { get; set; }
        public string UsuarioId { get; set; }
        public string NomeUsuario { get; set; }
        public string TelefoneUsuario { get; set; }
        public string EmailUsuario { get; set; }
    }
}
