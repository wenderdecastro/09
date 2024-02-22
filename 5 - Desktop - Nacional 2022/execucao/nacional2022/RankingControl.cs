using nacional2022.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace nacional2022
{
    public partial class RankingControl : UserControl
    {
        public RankingControl(Selecao time)
        {
            InitializeComponent();

            nomedotime.Text = time.Nome;
            pts.Text = time.pts.ToString();
            pj.Text = time.pj.ToString();   
            id.Text = time.IdSelecao.ToString();
            vit.Text = time.vit.ToString();
            e.Text = time.e.ToString();
            der.Text = time.der.ToString();
            gp.Text = time.gp.ToString();
            foto.Image = Resources.SemFoto;
            if (time.Bandeira != null)
            {
                foto.Image = Image.FromStream(new MemoryStream(time.Bandeira));
                
            }
            

        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }
    }
}
