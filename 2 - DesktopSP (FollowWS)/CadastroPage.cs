using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace _2___DesktopSP__FollowWS_
{
    public partial class CadastroPage : _2___DesktopSP__FollowWS_.parent
    {
        public CadastroPage()
        {
            InitializeComponent();
            textBox2.Leave += textBox2_Leave;
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
            this.Hide();
            new LoginPage().ShowDialog();
            this.Close();
        }
    }
}
