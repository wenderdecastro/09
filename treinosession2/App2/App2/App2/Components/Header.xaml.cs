using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App2.Components
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Header : ContentView
    {
        public Header()
        {
            InitializeComponent();
            nomeUsuario.Text = Usuario.logado.People.Name;
            imagemUsuario.Source = new Uri($"http://10.0.2.2/Images/People/{Usuario.logado.People.Photo}");
        }

    }
}