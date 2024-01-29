using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace TaskoolMobile
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();

            await Task.Delay(500);
            circle1.Fill = SolidColorBrush.Blue;
            circle2.Fill = SolidColorBrush.Red;
            circle3.Fill = SolidColorBrush.Blue;
            await Task.Delay(500);
            circle1.Fill = SolidColorBrush.White;
            circle2.Fill = SolidColorBrush.White;
            circle3.Fill = SolidColorBrush.White;
            await Task.Delay(500);
            circle1.Fill = SolidColorBrush.Blue;
            circle2.Fill = SolidColorBrush.Red;
            circle3.Fill = SolidColorBrush.White;
            await Task.Delay(500);
            circle1.Fill = SolidColorBrush.White;
            circle2.Fill = SolidColorBrush.White;
            circle3.Fill = SolidColorBrush.Blue;
            await Task.Delay(500);
            circle1.Fill = SolidColorBrush.White;
            circle2.Fill = SolidColorBrush.Blue;
            circle3.Fill = SolidColorBrush.Red;

            await Task.Delay(500);
            App.Current.MainPage = new MeusProjetos();
        }
    }
}
