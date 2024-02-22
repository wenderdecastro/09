using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace nacional2022
{
    public partial class NewPassword : parent
    {
        public NewPassword()
        {
            InitializeComponent();
        }

        private void NewPassword_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            logado.Senha = textBox1.Text;
            ctx.Usuarios.AddOrUpdate(logado);
            ctx.SaveChanges();

            new LoginPage().Show();
            this.Close();   

        }
    }
}
