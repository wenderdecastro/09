using Android.App;
using App2.Droid;


[assembly: Xamarin.Forms.Dependency(typeof(toast))]
namespace App2.Droid
{
    public class toast : IToast
    {
        public void Show(string msg)
        {
            Android.Widget.Toast.MakeText(Application.Context, msg, Android.Widget.ToastLength.Long);
        }
    }
}