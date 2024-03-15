using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace wendoAPP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Flyout : FlyoutPage
    {

        public Flyout()
        {
            InitializeComponent();

            FlyoutPage.ListView.ItemSelected += ListView_ItemSelected;
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            MessagingCenter.Send(this, "Reset");
        }


        private async void ListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var item = e.SelectedItem as FlyoutFlyoutMenuItem;
            if (item == null)
                return;

            if (item.Id == 3)
            {
                App.Current.MainPage = new LoginPage();
                Logado.logado = null;
                return;
            }

            var page = (Page)Activator.CreateInstance(item.TargetType);
            page.Title = item.Title;
            await Navigation.PushAsync(page);
            //Detail = new NavigationPage(page);

            IsPresented = false;

            FlyoutPage.ListView.SelectedItem = null;
        }
    }
}