using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using TaskoolMobile.Services;
using TaskoolMobile.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TaskoolMobile
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MeusProjetosDetail : ContentPage
    {
        public ObservableCollection<ProjetoVM> ListaProjetos { get; set; } = new ObservableCollection<ProjetoVM>();
        public MeusProjetosDetail()
        {
            InitializeComponent();
            BindingContext = this;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await LoadData();
        }

        private async Task LoadData() {

            var listaProjetos = await ApiService<ProjetoVM>.GetList("Projetos/Get");

            foreach (var item in listaProjetos)
                ListaProjetos.Add(item);

        }

        private void ListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            

        }
    }
}