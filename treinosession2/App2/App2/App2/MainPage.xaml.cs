using App2.Services;
using System;
using WebApplication1.Models;
using Xamarin.Forms;

namespace App2
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            Email.Text = "Aline.Moraes@live.com";
            Senha.Text = "w4OLymDSyE";
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {

            DependencyService.Get<IToast>().Show("teste");


            if (string.IsNullOrEmpty(Email.Text) || string.IsNullOrEmpty(Senha.Text))
            {
                DependencyService.Get<IToast>().Show("Campos vazios, preencha os campos solicitados.");
                return;
            }

            var login = new Employees();
            login.Email = Email.Text;
            login.Password = Senha.Text;


            var user = await ApiService<Employees>.Post("login", login);


            if (user != null)
            {
                Usuario.logado = user;
                App.Current.MainPage = new NavigationPage(new Mainscreen());
                return;
            }


            DependencyService.Get<IToast>().Show("Dados inválidos, verificar email e senha informados.");



        }
    }
}
