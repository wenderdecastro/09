using nacional2022.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
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
            if (Settings.Default.Senha != "")
            {
                logado = ctx.Usuarios.FirstOrDefault(x => x.IdUsuario == Settings.Default.Id);
                if (logado != null)
                {
                    new MainPage().Show();
                    this.Close();
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var user = ctx.Usuarios.FirstOrDefault(x => x.Email == textBox1.Text);
            
            if (user != null) {
                new LoginPage(user).Show();
                logado = user;
                this.Hide();
                return;
            }
            else if (user.DataCadastro == null)
            {
                //funcao de cadastro
                return;
            }

            Alert("Email não cadastrado");

        }
    }
}
