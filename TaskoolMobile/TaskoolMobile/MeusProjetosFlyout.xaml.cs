using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.Xaml;

namespace TaskoolMobile
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MeusProjetosFlyout : ContentPage
    {
        public ListView ListView;

        public MeusProjetosFlyout()
        {
            InitializeComponent();

            BindingContext = new MeusProjetosFlyoutViewModel();
            ListView = MenuItemsListView;
        }

        private class MeusProjetosFlyoutViewModel : INotifyPropertyChanged
        {
            public ObservableCollection<MeusProjetosFlyoutMenuItem> MenuItems { get; set; }

            public MeusProjetosFlyoutViewModel()
            {
                MenuItems = new ObservableCollection<MeusProjetosFlyoutMenuItem>(new[]
                {
                    new MeusProjetosFlyoutMenuItem { Id = 0, Title = "Contato"},
                    new MeusProjetosFlyoutMenuItem { Id = 1, Title = "Nosso site"},
                    new MeusProjetosFlyoutMenuItem { Id = 2, Title = "Sair"}
                });
            }

            #region INotifyPropertyChanged Implementation
            public event PropertyChangedEventHandler PropertyChanged;
            void OnPropertyChanged([CallerMemberName] string propertyName = "")
            {
                if (PropertyChanged == null)
                    return;

                PropertyChanged.Invoke(this, new PropertyChangedEventArgs(propertyName));
            }
            #endregion
        }

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            DisplayAlert("teste", "teste","teste");
        }
    }
}