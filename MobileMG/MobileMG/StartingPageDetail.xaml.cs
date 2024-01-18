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
    public partial class StartingPageDetail : ContentPage
    {
        public StartingPageDetail()
        {
            InitializeComponent();
        }

        private void ToolbarItem_Clicked(object sender, EventArgs e)
        {
            DisplayAlert("Informação", "V1.0.0 Desenvolvido por Wender <DR> durante a seletiva nacional de 2020.", "OK");

        }
    }
}