using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace _2___DesktopSP__FollowWS_
{
    public partial class CadastroPage : _2___DesktopSP__FollowWS_.parent
    {
        Usuarios newUser = new Usuarios();
        Image semFoto = Properties.Resources.SemFoto;
        ImageConverter cvt = new ImageConverter();

        public CadastroPage()
        {
            InitializeComponent();
            textBox2.Leave += textBox2_Leave;
            textBox2.TextChanged += verificarCampos;
            textBox1.TextChanged += verificarCampos;
        }
        private void CadastroPage_Load(object sender, EventArgs e)
        {
            byte[] imgToByte = (byte[])cvt.ConvertTo(semFoto, typeof(byte[]));
            newUser.Foto = imgToByte;
            pictureBox1.Image = semFoto;
            newUser.Senha = "admin123";
            button1.Enabled = false;

            //lista as seleções no dropdown
            comboBox1.Items.AddRange(ctx.Selecoes.Select(x => x.Nome).ToArray());

            //não permite usuarios com menos de 18 anos
            dateTimePicker1.MaxDate = DateTime.Now.AddYears(-18);

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_Leave(object sender, EventArgs e)
        {
            var userEmail = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox2.Text);



            if (userEmail == null)
                return;

            textBox4.BackColor = Color.Red;
            textBox4.ForeColor = Color.White;
            textBox4.Text = "Email já Cadastrado";


        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Close();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();

            ofd.Filter = "img files (*.bmp;*.png;*.jpg;*.jpeg)|*.bmp;*.png;*.jpg;*.jpeg";
            ofd.Title = "Selecione uma foto";

            if(ofd.ShowDialog() == DialogResult.OK)
            {
                Image selectedImage = Image.FromFile(ofd.FileName);

                pictureBox1.Image = selectedImage;

                byte[] imgToByte = (byte[])cvt.ConvertTo(selectedImage, typeof(byte[]));
                newUser.Foto = imgToByte;

            }
        }
        
        private void verificarCampos(object sender, EventArgs e)
        {

            string[] nome = textBox1.Text.Split(' ');
            if (nome.Count() >= 2)
                button1.Enabled = true;
            else button1.Enabled = false;

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            newUser.Email = textBox2.Text;
            newUser.Nome = textBox1.Text;
            
            newUser.Nascimento = dateTimePicker1.Value;
            newUser.Sexo = radioButton1.Checked ? "M" : "F";

            if (comboBox1.SelectedIndex != -1)
                newUser.TimeFavoritoId = comboBox1.SelectedIndex + 1;

            newUser.perfil = "1";

            ctx.Usuarios.Add(newUser);
            ctx.SaveChanges();

            this.Close();


        }
    }
}
