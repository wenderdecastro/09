using MobileMG.Models;
using MobileMG.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MobileMG
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RelatosPage : ContentPage
    {
        public ObservableCollection<RelatosViewModel> ListaRelatos { get; set; } = new ObservableCollection<RelatosViewModel>();
        public RelatosPage()
        {
            InitializeComponent();
            BindingContext = this;

        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            LoadData();

            
        }

        private async void LoadData()
        {
            var listaRelatos = await ApiServices<RelatosViewModel>.GetRelatos();

            foreach (var item in listaRelatos)
            {
                ListaRelatos.Add(item);
            }
        }

        private void ListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var relatoSelecionado = e.SelectedItem as RelatosViewModel;
            Navigation.PushAsync(new RelatosDetail(relatoSelecionado));
        }
    }
}