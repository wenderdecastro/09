using Android.App;
using Android.Appwidget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using wendoAPI;
using wendoAPP.Services;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Android.Content.ClipData;

namespace wendoAPP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RelatosDetail : ContentPage
    {
        private Relatos relato;

        public RelatosDetail()
        {
            InitializeComponent();
            MessagingCenter.Send(this, "Reset");


        }

        public RelatosDetail(Relatos relato)
        {
            InitializeComponent();


            this.relato = relato;
            BindingContext = relato;
        }

        protected override void OnSizeAllocated(double width, double height)
        {
            base.OnSizeAllocated(width, height);
            if(width > height)
            {
                horizontal.IsVisible = true;
                vertical.IsVisible = false;
                toolbaricon1.Order = ToolbarItemOrder.Secondary;
                toolbaricon2.Order = ToolbarItemOrder.Secondary;
            }
            else
            {
                toolbaricon1.Order = ToolbarItemOrder.Primary;
                toolbaricon2.Order = ToolbarItemOrder.Primary;
                horizontal.IsVisible = false;
                vertical.IsVisible = true;
            }
        }

        private async void ToolbarItem_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CadastroPage(relato));
        }

        private async void ToolbarItem_Clicked_1(object sender, EventArgs e)
        {
            
            var deletado = await ApiService<Relatos>.Get($"relatos/delete/{relato.id}");
            await DisplayAlert("Informação", "Relato deletado", "Ok");
            await Navigation.PushAsync(new RelatosPage());
        }
    }
}