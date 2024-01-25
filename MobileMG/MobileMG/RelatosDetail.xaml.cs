using MobileMG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MobileMG
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RelatosDetail : ContentPage
    {
        public RelatosDetail(RelatosViewModel relato)
        {
            InitializeComponent();

            relatoDescricao.Text = relato.Relato;
            relatoLatitude.Text = relato.Latitude;
            relatoLongitude.Text = relato.Longitude;
            usuarioNome.Text = relato.NomeUsuario;
            usuarioTelefone.Text = relato.TelefoneUsuario;
            usuarioEmail.Text = relato.EmailUsuario;

        }

        private void ToolbarItem_Clicked(object sender, EventArgs e)
        {

        }

        private void ToolbarItem_Clicked_1(object sender, EventArgs e)
        {

        }
    }
}