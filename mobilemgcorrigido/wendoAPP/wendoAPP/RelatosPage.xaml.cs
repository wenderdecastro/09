using Android.Appwidget;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using wendoAPI;
using wendoAPP.Services;
using wendoAPP.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Android.Provider.ContactsContract.CommonDataKinds;

namespace wendoAPP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RelatosPage : ContentPage
    {
        public ObservableCollection<Relatos> RelatosList { get; set; } = new ObservableCollection<Relatos> ();
        public RelatosPage()    
        {
            InitializeComponent();
            BindingContext = this;
            MessagingCenter.Send(this, "Reset");

            NavigationPage.SetHasNavigationBar(this, true);
            NavigationPage.SetHasBackButton(this, true);
        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await LoadData();
        }

        protected override void OnSizeAllocated(double width, double height)
        {
            base.OnSizeAllocated(width, height);

            if (width > height)
            {
                horizontal.IsVisible = true;
                vertical.IsVisible = false;
            }
            else
            {
                horizontal.IsVisible = false;
                vertical.IsVisible = true;
            }
        }

        private async Task LoadData()
        {
            RelatosList.Clear();
            var list = await ApiService<Relatos>.GetList("Relatos");

            foreach (var item in list)
            {
                var imagem = $"{item.imagem}.jpg";
                item.imagem = imagem;
                    RelatosList.Add(item);
            }
        }

        private async void ListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var teste = e.SelectedItem as Relatos;
            await Navigation.PushAsync(new RelatosDetail(teste));
        }

        private async void MenuItem_Clicked(object sender, EventArgs e)
        {
            var relatoid = ((sender as MenuItem).BindingContext as Relatos);
            var deletado = await ApiService<Relatos>.Get($"relatos/delete/{relatoid.id}");
            await DisplayAlert("Informação", "Relato deletado", "Ok");
            await LoadData();

        }

        private async void horizontal_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var teste = e.CurrentSelection as Relatos;
            await Navigation.PushAsync(new RelatosDetail(teste));
        }
    }
}