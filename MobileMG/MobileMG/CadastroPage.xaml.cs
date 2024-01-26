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
    public partial class CadastroPage : ContentPage
    {
        public CadastroPage()
        {
            InitializeComponent();
        }
        
        public CadastroPage(RelatosViewModel relato)
        {
            InitializeComponent();

            BindingContext = relato;

            labelEmail.Text = UserLogged.UsuarioLogado.Email;
            labelId.Text = UserLogged.UsuarioLogado.Id.ToString();
            labelLatitude.Text = relato.Latitude.ToString();
            labelLongitude.Text = relato.Longitude.ToString();
            labelNome.Text = relato.NomeUsuario;

            //imgRelato.Source = ImageSource.FromResource($"{relato.Imagem}");

        }

        private void Button_Clicked(object sender, EventArgs e)
        {

        }

        private void Button_Clicked_1(object sender, EventArgs e)
        {

        }

        private void Button_Clicked_2(object sender, EventArgs e)
        {

        }
    }
}