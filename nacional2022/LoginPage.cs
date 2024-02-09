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

        public LoginPage(bool password)
        {
            InitializeComponent();

            label3.Visible = true;
            button2.Visible = true;
            textBox1.ReadOnly = false;

            Task.Delay(10000);

            label3.Visible = false;
            button2.Visible = false;
            textBox1.ReadOnly = true;
            this.Close();

        }

        private void LoginPage_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var login = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text && x.Senha == textBox2.Text);

            if (login != null)
            {
                if (checkBox1.Checked)
                {
                    Settings.Default.Senha = login.Senha;
                    Settings.Default.Id = login.IdUsuario;
                }

                Info("Boas Vindas");
                new MainPage().Show();

            }

            Alert("credenciais inválidas");
            textBox2.Clear();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

            perguntas.Clear();

            List<PerguntaUsuario> pergs = ctx.PerguntaUsuario.Where(x => x.idUsuario == logado.IdUsuario).ToList();

            if (pergs.Count == 0) { return; }

            foreach (PerguntaUsuario perg in pergs)
            {
                var p = ctx.Pergunta.First(x => x.idPergunta == perg.idPergunta);
                perguntas.Add(p);
            }

            new Question().ShowDialog();
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
