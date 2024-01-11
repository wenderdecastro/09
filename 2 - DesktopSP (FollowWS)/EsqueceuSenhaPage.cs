using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _2___DesktopSP__FollowWS_
{
    public partial class EsqueceuSenhaPage : Form
    {
        public EsqueceuSenhaPage()
        {
            InitializeComponent();
        }

        Usuarios user = new Usuarios();
        bool senhaValida = false;
        public EsqueceuSenhaPage(Usuarios usuario)
        {
            InitializeComponent();
            user = usuario;
            
        }
        Sessao5Entities ctx = new Sessao5Entities();

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            new LoginPage().ShowDialog();
            this.Close();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void EsqueceuSenhaPage_Load(object sender, EventArgs e)
        {
            List<Selecoes> Times = ctx.Selecoes.ToList();
            for (int i = 0; i < Times.Count; i++)
            {
                comboBox1.Items.Add(Times[i].Nome);

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if ((comboBox1.SelectedIndex == user.TimeFavoritoId && dateTimePicker1.Value == user.Nascimento) && senhaValida) 
            {
                
                
            }
        }
    }
}
