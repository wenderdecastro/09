using App2.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using WebApplication1.Models;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Documentos : ContentPage
    {

        public ObservableCollection<Documents> Docs { get; set; } = new ObservableCollection<Documents>();
        public List<Documents> DocsList { get; set; } = new List<Documents>();
        public byte[] imageData = null;
        public ObservableCollection<string> Items { get; set; } = new ObservableCollection<string>();
        public FileResult Image { get; private set; }

        private Documents selectedDocument = new Documents();
        public Documentos()
        {
            InitializeComponent();
            BindingContext = this;

        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            LoadData();


        }

        private async void LoadData()
        {
            Items.Clear();

            Docs.Clear();
            DocsList = await ApiService<Documents>.GetList($"documentos/{Usuario.logado.ID}");
            foreach (var doc in DocsList)
            {
                doc.IsAttached = !string.IsNullOrEmpty(doc.Attachment);
                Docs.Add(doc);
                Items.Add(doc.DocumentTypes.Name);
            }




        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            modal.IsVisible = true;

        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {

            var result = await DisplayActionSheet("Select image", "Cancel", null, "Take Picture", "Select Existent");

            if (result == "Take Picture")
            {
                Image = await MediaPicker.CapturePhotoAsync();

                if (Image != null)
                {
                    filestatus.Text = Image.FileName;
                    var image = await Image.OpenReadAsync();
                    using (MemoryStream ms = new MemoryStream())
                    {
                        await image.CopyToAsync(ms);
                        imageData = ms.ToArray();

                    }

                }
            }

            if (result == "Select Existent")
            {
                Image = await MediaPicker.PickPhotoAsync();
                if (Image == null) return;

                filestatus.Text = Image.FileName;


                imageData = File.ReadAllBytes(Image.FullPath);

            }
        }

        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            if (Image == null)
                return;


            Documents doc = new Documents();
            doc.ID = selectedDocument.ID;
            doc.Photo = File.ReadAllBytes(Image.FullPath);
            doc.Attachment = Image.FileName;
            var response = await ApiService<Documents>.Post("saveattachment", doc);
        }

        private void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
        {
            modal.IsVisible = false;
            filestatus.Text = "";
            select.SelectedIndex = -1;
        }

        private void ImageButton_Clicked(object sender, EventArgs e)
        {
            Navigation.PopAsync();
        }

        private void SwipeItem_Clicked(object sender, EventArgs e)
        {

        }

        private async void SwipeItem_Clicked_1(object sender, EventArgs e)
        {
            var id = ((sender as SwipeItem).BindingContext as Documents).ID;
            var delete = await ApiService<Documents>.Get($"document/delete/{id}");
            DisplayAlert("Info", "Comprovante excluído com sucesso", "Ok");

            LoadData();

        }

        private void SwipeItem_Clicked_2(object sender, EventArgs e)
        {
            modal.IsVisible = true;
            var obj = ((sender as SwipeItem).BindingContext as Documents);
            select.SelectedItem = $"{obj.DocumentTypes.Name}";

        }
    }
}