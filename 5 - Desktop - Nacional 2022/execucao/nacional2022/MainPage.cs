using nacional2022.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace nacional2022
{
    public partial class MainPage : nacional2022.parent
    {
        public MainPage()
        {
            InitializeComponent();
            pictureBox1.Image = Properties.Resources.SemFoto;

        }

        private void MainPage_Load(object sender, EventArgs e)
        {
            if (logado.Foto != null)
            {
                pictureBox1.Image = Image.FromStream(new MemoryStream(logado.Foto));
            }

           





        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Settings.Default.Senha = null;
            Settings.Default.Save();
        }

        private void convidadosToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void rankingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new Ranking().ShowDialog();
        }
    }
}
