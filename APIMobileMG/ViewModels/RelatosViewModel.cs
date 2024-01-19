using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APIMobileMG.ViewModels
{
    public class RelatosViewModel
    {
        public int Id { get; set; }
        public string Relato { get; set; }
        public string Imagem { get; set; }
        public decimal Latitude { get; set; }
        public decimal Longitude { get; set; }
        public int? UsuarioId { get; set; }
        public string NomeUsuario { get; set; }
        public string TelefoneUsuario { get; set; }
        public string EmailUsuario { get; set; }
    }
}