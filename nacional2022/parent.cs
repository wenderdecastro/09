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
    public partial class parent : Form
    {
        public ModuloDesktopEntities ctx = new ModuloDesktopEntities();
        public Settings cfg = new Settings();
        public parent()
        {
            InitializeComponent();
        }

        public Usuarios logado = new Usuarios();
        public List<Pergunta> perguntas = new List<Pergunta>();

        private void parent_Load(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        public void Info(string msg)
        {
            MessageBox.Show("Informação", msg, MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        public bool Confirm(string msg)
        {
            var result = MessageBox.Show("Confirmação", msg, MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes) return true;
            return false;
        }
        public void Alert(string msg)
        {
            MessageBox.Show("Alerta", msg, MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }
    }
}
