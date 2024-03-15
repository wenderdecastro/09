using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace wendoAPP
{
    public partial class MainPage : ContentPage
    {
        public string tree { get; set; } = "pinetree.png";
        public MainPage()
        {
            InitializeComponent();
            BindingContext = tree;
        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();

            await Task.Delay(3000);
            App.Current.MainPage = new LoginPage();
        }
    }
}
