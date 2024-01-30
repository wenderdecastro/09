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
        BaseVM vm = new BaseVM();
        public MeusProjetosDetail()
        {
            InitializeComponent();
            BindingContext = vm;

            
           
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await LoadData();

            
            
        }

        public void teste()
        {
            
        }

        private async Task LoadData() {

            var listaTarefas = await ApiService<TarefasVM>.GetList("ProjetoItems/Get");

            var listaProjetos = await ApiService<ProjetoVM>.GetList("Projetos/Get");

            foreach (var projeto in listaProjetos)
            {
                var projetoTarefas = new ObservableCollection<TarefasVM>(listaTarefas.Where(x => x.CodProjeto == projeto.Codigo).ToList());

                if(projetoTarefas.Any(x => x.isConcluida == false))
                {
                    projeto.TextoPendentes = $"{projetoTarefas.Count} tarefas pendentes";
                    projeto.Pendentes = projetoTarefas.Count;
                    projeto.EmAndamento = true;
                    projeto.Completo = false;
                }
                else
                {
                    projeto.TextoPendentes = "Completo";
                    projeto.Pendentes = 0;
                    projeto.EmAndamento = false;
                    projeto.Completo = true;
                }

                projeto.ListaTarefas = projetoTarefas;


                vm.ListaProjetos.Add(projeto);

            }

        }

        private async void ListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            

        }


        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {

        }
    }
}