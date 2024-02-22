using nacional2022.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace nacional2022
{
    public partial class Form1 : parent
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            textBox1.Text = "fernanda@gmail.com";

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var user = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text);
            
            if (user != null) {
                if(user.Senha == Settings.Default.Senha)
                {
                    this.Hide();
                    new MainPage().ShowDialog();
                    return;
                }
                if (user.DataCadastro == null)
                {
                    //funcao de cadastro
                    return;
                }
                logado = user;
                new LoginPage(logado).Show();
                this.Hide();
                return;
            }
             

            Alert("Email não cadastrado");

        }
    }
}
