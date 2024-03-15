using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace wendoAPP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FlyoutDetail : ContentPage
    {
        public FlyoutDetail()
        {
            InitializeComponent();
            //NavigationPage.SetHasNavigationBar(this, false);
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
        }

        private void ToolbarItem_Clicked(object sender, EventArgs e)
        {

            DisplayAlert("Informação", "V1.0.0 Desenvolvido por Wender <DR> durante a seletiva nacional de 2020.", "OK");

        }
    }
}