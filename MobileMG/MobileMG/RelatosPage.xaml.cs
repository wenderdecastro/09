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
        ObservableCollection<Relatos> ListaRelatos { get; set; } = new ObservableCollection<Relatos>();
        public RelatosPage()
        {
            InitializeComponent();

        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            var listaRelatos = await ApiServices<Relatos>.GetRelatos();

            foreach (var item in listaRelatos)
            {
                ListaRelatos.Add(item);
            }
        }

    }
}