using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace TaskoolMobile
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MeusProjetos : FlyoutPage
    {
        public MeusProjetos()
        {
            InitializeComponent();
            FlyoutPage.ListView.ItemSelected += ListView_ItemSelected;
        }

        private void ListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var item = e.SelectedItem as MeusProjetosFlyoutMenuItem;
            if (item == null)
                return;

            if (item.Id == 0)
            {
                PhoneDialer.Open("+738930000");
                return;
            }
            else if (item.Id == 1)
            {
                Browser.OpenAsync(new Uri("https://www.worldskills.com"));
                return;
            }

            var page = (Page)Activator.CreateInstance(item.TargetType);
            page.Title = item.Title;

            Detail = new NavigationPage(page);
            IsPresented = false;

            FlyoutPage.ListView.SelectedItem = null;
        }
    }
}