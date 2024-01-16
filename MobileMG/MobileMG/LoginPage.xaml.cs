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
        }

        private async void btnEntrar_Clicked(object sender, EventArgs e)
        {
            if(usuarioInput.Text == "teste" && senhaInput.Text == "123")
            {
                DisplayAlert("teste", "teste", "teste");
            }
            else
            {
                tries++;
                toastNotification.IsVisible = true;

                senhaInput.border

                if(tries == 3)
                {
                    senhaInput.IsEnabled = usuarioInput.IsEnabled = btnEntrar.IsEnabled = false;
                    toastNotification.Text = "Login bloqueado: aguarda 30s!";
                    await Task.Delay(30000);
                    senhaInput.IsEnabled = usuarioInput.IsEnabled = btnEntrar.IsEnabled = true;
                    toastNotification.IsVisible = false;
                }
            }
        }
    }
}