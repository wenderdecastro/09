using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Mainscreen : ContentPage
    {
        public Mainscreen()
        {
            InitializeComponent();

        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new Documentos());

        }

        private void Button_Clicked_1(object sender, EventArgs e)
        {

        }

        private void Button_Clicked_2(object sender, EventArgs e)
        {

        }

        private void Button_Clicked_3(object sender, EventArgs e)
        {

        }
    }
}