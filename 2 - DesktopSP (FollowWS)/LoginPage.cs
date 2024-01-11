using _2___DesktopSP__FollowWS_.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Schema;

namespace _2___DesktopSP__FollowWS_
{
    public partial class LoginPage : Form
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        Sessao5Entities ctx = new Sessao5Entities();
        Settings cfg = new Settings();

        private void LoginPage_Load(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            var usuarioBuscado = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text);
            if (textBox1.Text == usuarioBuscado.Email)
            {
                this.Hide();
                new EsqueceuSenhaPage(usuarioBuscado).ShowDialog();
                this.Close();
                return;
            }
            MessageBox.Show("Insira um email para alterar a senha.");

        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            new CadastroPage().ShowDialog();
            this.Close();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == string.Empty || textBox2.Text == string.Empty)
            {
                MessageBox.Show("Preencha todos os campos corretamente.");
                return;
            }
            var usuarioBuscado = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text && x.Senha == textBox2.Text);

            if (usuarioBuscado == null)
            {
                MessageBox.Show("Usuario ou senha inválidos.");
                return;
            }

            if (checkBox1.Checked)
            {
                cfg.userId = usuarioBuscado.Id;
                cfg.manterLogado = true;
            }

            if (usuarioBuscado.perfil == "1")
            {
                this.Hide();
                new MainPageADM().ShowDialog();
                this.Close();
                return;
            }

            this.Hide();
            new MainPageADM().ShowDialog();
            this.Close();
        }
    }
}
