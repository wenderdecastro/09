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
                    new StartingPageFlyoutMenuItem { Id = 0, Title = "Home", RowImage = "baseline_home_24"},
                    new StartingPageFlyoutMenuItem { Id = 1, Title = "Reportar Ação", RowImage = "baseline_add_box_24" },
                    new StartingPageFlyoutMenuItem { Id = 2, Title = "Visualizar", RowImage = "baseline_pageview_24" },
                    new StartingPageFlyoutMenuItem { Id = 3, Title = "Sair", RowImage = "baseline_exit_to_app_24" },
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