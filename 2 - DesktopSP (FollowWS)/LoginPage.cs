using _2___DesktopSP__FollowWS_.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace _2___DesktopSP__FollowWS_
{
    public partial class LoginPage : _2___DesktopSP__FollowWS_.parent
    {

        Settings cfg = new Settings();
        public LoginPage()
        {
            InitializeComponent();
            textBox1.Leave += textBox1_Leave;

        }


        private void LoginPage_Load(object sender, EventArgs e)
        {

        }


        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == string.Empty || textBox2.Text == string.Empty)
            {
                Alert.info("Campos de usuario ou senha vazios.");
                return;
            }
            var usuarioBuscado = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text && x.Senha == textBox2.Text);

            if (usuarioBuscado == null)
            {
                Alert.info("Usuario ou senha inválidos.");
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
            new MainPageComum().ShowDialog();
            this.Close();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox1_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void textBox1_Leave(object sender, EventArgs e)
        {
            var userEmail = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text);

            if (userEmail == null)
                return;

            if (userEmail.perfil == "1") return;
            else checkBox1.Enabled = false;
            checkBox1.Checked = false;
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (textBox1.Text == string.Empty)
            {
                Alert.info("Insira um email para alterar a senha.");
                return;
            }
            var usuarioBuscado = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text);

            if (usuarioBuscado == null) return;

            User.logado = usuarioBuscado;
           
            new EsqueceuSenhaPage().ShowDialog();
            return;



        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            new CadastroPage().ShowDialog();
        }

    }
}
