using nacional2022.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace nacional2022
{
    public partial class LoginPage : parent
    {
        Settings cfg = new Settings();
        bool recoverMode;
        string recoverPwd;
        public LoginPage()
        {
            InitializeComponent();
        }

        public LoginPage(Usuarios usuario)
        {
            InitializeComponent();
            textBox1.Text = usuario.Email;
            textBox1.ReadOnly = true;
        }

        public LoginPage(string pwd)
        {
            InitializeComponent();
            textBox1.ReadOnly = true;

            recoverMode = true;
            recoverPwd = pwd;
            RememberPassword();

        }

        private async void RememberPassword()
        {
            textBox1.Text = logado.Email;
            label3.Visible = true;
            button2.Visible = true;

            await Task.Delay(10000);

            label3.Visible = false;
            button2.Visible = false;
            recoverMode = false;

        }

        private void LoginPage_Load(object sender, EventArgs e)
        {
            textBox2.Clear();

        }

        private void button1_Click(object sender, EventArgs e)
        {

            if (recoverMode)
            {
                if (textBox2.Text == recoverPwd)
                {
                    new NewPassword().ShowDialog();
                    return;
                }
            }
            var login = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text && x.Senha == textBox2.Text);

            if (login != null)
            {
                if (checkBox1.Checked)
                {
                    Settings.Default.Senha = login.Senha;
                    Settings.Default.Id = login.IdUsuario;
                    Settings.Default.Save();
                }

                logado = login;

                Info("Boas Vindas");
                new MainPage().Show();
                this.Hide();
                return;

            }

            Alert("credenciais inválidas");
            textBox2.Clear();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

            perguntas.Clear();

            List<PerguntaUsuario> pergs = ctx.PerguntaUsuario.Where(x => x.idUsuario == logado.IdUsuario).ToList();

            if (pergs.Count == 0) return;

            foreach (PerguntaUsuario perg in pergs)
            {
                var p = ctx.Pergunta.First(x => x.idPergunta == perg.idPergunta);
                perguntas.Add(p);
            }

            new Question(perguntas).ShowDialog();
            this.Hide();
            return;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox2.Text = Clipboard.GetText();

        }
    }
}
