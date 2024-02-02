using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Jogador2 : Form
    {
        LyonCompanyDBEntities ctx = new LyonCompanyDBEntities();
        public Jogador2()
        {
            InitializeComponent();
        }

        private void Jogador2_Load(object sender, EventArgs e)
        {
            
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            new AlunosRanking().Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var alunoBuscado = ctx.Alunos.FirstOrDefault(x => x.Aluno == textBox1.Text && x.Matricula == textBox2.Text);

            if (alunoBuscado == null)
            {
                MessageBox.Show("Dados inválidos");
                return;

            }
            MessageBox.Show("Aluno logado");
        }
    }
}
