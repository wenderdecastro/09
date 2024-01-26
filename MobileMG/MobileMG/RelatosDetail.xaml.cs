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
        private RelatosViewModel _relato;
        public RelatosDetail(RelatosViewModel relato)
        {
            InitializeComponent();

            _relato = relato;

            relatoDescricao.Text = relato.Relato;
            relatoLatitude.Text = relato.Latitude;
            relatoLongitude.Text = relato.Longitude;
            usuarioNome.Text = relato.NomeUsuario;
            usuarioTelefone.Text = relato.TelefoneUsuario;
            usuarioEmail.Text = relato.EmailUsuario;

            BindingContext = relato;
        }

        private void ToolbarItem_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new CadastroPage(_relato));
        }

        private void ToolbarItem_Clicked_1(object sender, EventArgs e)
        {

        }
    }
}