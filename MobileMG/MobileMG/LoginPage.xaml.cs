using MobileMG.Models;
using MobileMG.Services;
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
    public partial class LoginPage : ContentPage
    {
        int tries = 0;

        public LoginPage()
        {
            InitializeComponent();
            usuarioInput.Text = "juliane2009@gmail.com";
            senhaInput.Text = "6654";
            
        }

        private async void btnEntrar_Clicked(object sender, EventArgs e)
        {
            var login = new LoginViewModel
            {
                email = usuarioInput.Text,
                senha = senhaInput.Text,
            };

            var user = await ApiServices<Usuarios>.Login(login);

            

            if (user == null)
            {
                tries++;
                toastNotification.IsVisible = true;
                toastNotification.Text = "Usuário/Senha inválidos!";

                if (tries == 3)
                {
                    senhaInput.IsEnabled = usuarioInput.IsEnabled = btnEntrar.IsEnabled = false;
                    toastNotification.Text = "Login bloqueado: aguarda 30s!";
                    await Task.Delay(30000);
                    senhaInput.IsEnabled = usuarioInput.IsEnabled = btnEntrar.IsEnabled = true;
                    toastNotification.IsVisible = false;
                }
                
            }
            else
            {
                UserLogged.UsuarioLogado = user;
                App.Current.MainPage = new StartingPage();
            }

            
        }
    }
}