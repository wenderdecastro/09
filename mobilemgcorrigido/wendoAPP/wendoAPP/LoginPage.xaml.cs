
using System;
using System.Threading.Tasks;
using wendoAPI;
using wendoAPP.Services;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace wendoAPP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        int tries = 0;
        public LoginPage()
        {
            InitializeComponent();
            MessagingCenter.Send(this, "ForcePortrait");
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            Email.Text = "Daianaclf@hotmail.com";
            Senha.Text = "321654";

        }

        private async void Button_Clicked(object sender, EventArgs e)
        {

            var user = new Usuario();

            user.email = Email.Text;
            user.senha = Senha.Text;

            var usuario = await ApiService<Usuario>.Post("login", user);

            if (usuario != null)
            {
                Logado.logado = usuario;
                var page = new NavigationPage(new Flyout());
                NavigationPage.SetHasNavigationBar(page, false);
                App.Current.MainPage = page;
                return;

            }

            tries++;
            DependencyService.Get<IToast>().Show("Usuario/Senha inválidos!");
            frame1.BorderColor = Color.Red;
            frame2.BorderColor = Color.Red;

            if (tries == 3)
            {
                DependencyService.Get<IToast>().Show("Login bloqueado, aguarde 30s.");

                loginbutton.IsEnabled = false;
                Email.IsEnabled = false;
                Senha.IsEnabled = false;
                await Task.Delay(30000);
                loginbutton.IsEnabled = true;
                Email.IsEnabled = true;
                Senha.IsEnabled = true;
                frame1.BorderColor = Color.Transparent;
                frame2.BorderColor = Color.Transparent;
            }



        }
    }
}