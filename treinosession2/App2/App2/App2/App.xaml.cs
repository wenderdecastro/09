using Xamarin.Forms;

[assembly: ExportFont("Montserrat-Medium.ttf", Alias = "Montserrat")]
namespace App2
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new MainPage();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
