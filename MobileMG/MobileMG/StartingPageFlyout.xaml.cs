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

namespace MobileMG
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class StartingPageFlyout : ContentPage
    {
        public ListView ListView;

        public StartingPageFlyout()
        {
            InitializeComponent();

            BindingContext = new StartingPageFlyoutViewModel();
            ListView = MenuItemsListView;
        }

        private class StartingPageFlyoutViewModel : INotifyPropertyChanged
        {
            public ObservableCollection<StartingPageFlyoutMenuItem> MenuItems { get; set; }

            public StartingPageFlyoutViewModel()
            {
                MenuItems = new ObservableCollection<StartingPageFlyoutMenuItem>(new[]
                {
                    new StartingPageFlyoutMenuItem { Id = 0, Title = "Home" },
                    new StartingPageFlyoutMenuItem { Id = 1, Title = "Reportar Ação" },
                    new StartingPageFlyoutMenuItem { Id = 2, Title = "Visualizar" },
                    new StartingPageFlyoutMenuItem { Id = 3, Title = "Sair" },
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
    }
}