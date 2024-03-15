using Android.OS;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace wendoAPP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FlyoutFlyout : ContentPage
    {
        public ListView ListView;

        public FlyoutFlyout()
        {
            InitializeComponent();

            BindingContext = new FlyoutFlyoutViewModel();
            ListView = MenuItemsListView;

            texto.BindingContext = Logado.logado;
            
        }

        private class FlyoutFlyoutViewModel : INotifyPropertyChanged
        {
            public ObservableCollection<FlyoutFlyoutMenuItem> MenuItems { get; set; }

            public FlyoutFlyoutViewModel()
            {
                MenuItems = new ObservableCollection<FlyoutFlyoutMenuItem>(new[]
                {
                    new FlyoutFlyoutMenuItem { Id = 0, Title = "Home", Image = "home", Enabled = true,TargetType = typeof(FlyoutDetail)},
                    new FlyoutFlyoutMenuItem { Id = 1, Title = "Reportar ação", Image = "add", Enabled = true ,TargetType = typeof(CadastroPage)},
                    new FlyoutFlyoutMenuItem { Id = 2, Title = "Visualizar", TargetType = typeof(RelatosPage), Image = "view", Enabled = Logado.logado.funcaoid == 1 ? true : false},
                    new FlyoutFlyoutMenuItem { Id = 3, Title = "Sair", Image = "exit", Enabled = true, },
                }); ;

                
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
    }
}