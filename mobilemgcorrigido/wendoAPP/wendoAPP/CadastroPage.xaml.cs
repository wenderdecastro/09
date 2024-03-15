using Android.Graphics;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using wendoAPI;
using wendoAPP.Services;
using wendoAPP.Utils;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static System.Net.Mime.MediaTypeNames;

namespace wendoAPP
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CadastroPage : ContentPage
    {
        private string imagem;

        public CadastroPage()
        {
            InitializeComponent();
            MessagingCenter.Send(this, "Reset");

        }
        public CadastroPage(Relatos relatos)
        {
            InitializeComponent();
            relato.Text = relatos.relato;

            image.Source = ImageSource.FromResource($"wendoAPP.Images.{relatos.relato}");
            latitude.Text = relatos.latitude.ToString();
            longitude.Text = relatos.longitude.ToString();


        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            id.Text = Logado.logado.id.ToString();
            name.Text = Logado.logado.nome;
            email.Text = Logado.logado.email;
        }
        protected override void OnSizeAllocated(double width, double height)
        {
            base.OnSizeAllocated(width, height);
            if (width > height)
            {

                maincontainer.Orientation = StackOrientation.Horizontal;
                container1.WidthRequest = width / 1.50;
                image.WidthRequest = 300;
                relato.HeightRequest = 150;
                userinfo.Orientation = StackOrientation.Horizontal;
            }
            else
            {
                maincontainer.Orientation = StackOrientation.Vertical;
                relato.HeightRequest = 300;
                image.WidthRequest = width / 2;
                userinfo.Orientation = StackOrientation.Vertical;
            }
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            var location = await Geolocation.GetLocationAsync();

            latitude.Text = location.Latitude.ToString();
            longitude.Text = location.Longitude.ToString();

        }

        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            var foto = await MediaPicker.CapturePhotoAsync();
            
            image.Source = ImageSource.FromFile(foto.FullPath);

            imagem = foto.FileName;

            Stream imageStream = await ((StreamImageSource)image.Source).Stream(CancellationToken.None);
            byte[] imageData;
            using (MemoryStream memoryStream = new MemoryStream())
            {
                await imageStream.CopyToAsync(memoryStream);
                imageData = memoryStream.ToArray();
            }

            // Save the byte array as a PNG file
            string folderPath = "wendoAPP.Images.";
            string filePath = System.IO.Path.Combine(folderPath, "saved_image.png");

            File.WriteAllBytes(filePath, imageData);

            //ImageConverter cvt = new ImageConverter();

            //byte[] byteImg = cvt.Convert(foto, typeof(byte[]));

        }

        private async void Button_Clicked_2(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(relato.Text))
            {
                await DisplayAlert("Erro", "Preencha todos os campos corretamente", "OK");
            }

            try
            {
                Relatos rel = new Relatos();

                rel.imagem = "default";
                rel.latitude = Convert.ToDecimal(latitude.Text);
                rel.longitude = Convert.ToDecimal(longitude.Text);
                rel.relato = relato.Text;
                rel.usuarioid = Logado.logado.id;
                if(image.Source != null)
                {
                    rel.imagem = imagem;
                }
                if (slider.IsToggled)
                {
                    rel.usuarioid = 0;

                }

                var request = await ApiService<Relatos>.Post("relatos/add", rel);
                if (request != null)
                {
                    await DisplayAlert("Informação", "Relato salvo com sucesso", "OK");
                    await Navigation.PopToRootAsync();
                    return;
                }

                await DisplayAlert("Erro", "Não foi possível salvar o relato, verifique os campos", "OK");
            }
            catch (Exception)
            {

                throw;
            }
        }

        private async void Button_Clicked_3(object sender, EventArgs e)
        {
            await Navigation.PopToRootAsync();
        }
    }
}