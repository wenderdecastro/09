using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Taskool
{
    public partial class HomePage : Form
    {
        string lingua = "PT";
        Usuario usuarioLogado;

        public HomePage(Usuario usuario, Image imagemUsuario)
        {
            InitializeComponent();
            pictureBoxUsuario.Image = imagemUsuario;
            usuarioLogado = usuario;
        }

        private void HomePage_Load(object sender, EventArgs e)
        {
            Timer timer = new Timer();
            timer.Interval = 10;
            timer.Tick += UpdateTime;
            timer.Start();

            var texto = Encoding.UTF8.GetString(Properties.Resources.mensagens);
            var lista = JsonConvert.DeserializeObject<List<JsonMensagens>>(texto);
            Random rnd = new Random();
            int i = rnd.Next(lista.Count());

            button1.BackColor = SystemColors.Highlight;

            frase.Text = $"{lista[i].mensagem}";
            autor.Text = $"{lista[i].autor}";

        }

        private void gerarSaudacao()
        {
            DateTime agora = DateTime.Now;

            string saudacao;

            if (agora.Hour > 12 && agora.Hour < 18)
            {
                saudacao = lingua == "PT" ? "Boa tarde" : "Good afternoon";
            }
            else if (agora.Hour > 18 && agora.Hour == 23)
            {
                saudacao = lingua == "PT" ? "Boa noite" : "Good evening";
            }
            else if (agora.Hour >= 0 && agora.Hour < 4)
            {
                saudacao = lingua == "PT" ? "Boa madrugada" : "Good sun-up";
            }
            else
            {
                saudacao = lingua == "PT" ? "Bom dia" : "Good morning";
            }

            labelBoasVindas.Text = $"{saudacao} {usuarioLogado.Nome}!";

        }


        private void UpdateTime(object sender, EventArgs e)
        {
            horaAtual.Text = DateTime.Now.ToString("HH:mm");
            gerarSaudacao();

        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {

        }

        private void panel6_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void horaAtual_Click(object sender, EventArgs e)
        {

        }

        private void labelBoasVindas_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            contextMenuStrip1.Show(pictureBoxUsuario, 0, pictureBoxUsuario.Height);

        }

        private void contextMenuStrip1_Opening(object sender, CancelEventArgs e)
        {

        }

        private void Logout_Click(object sender, EventArgs e)
        {
            this.Hide();
            new Form1().ShowDialog();
            this.Close();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            //botão ingles
            button2.BackColor = SystemColors.Highlight;
            button1.BackColor = SystemColors.Control;
            lingua = "EN";

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //botão portugues
            button2.BackColor = SystemColors.Control;
            button1.BackColor = SystemColors.Highlight;
            lingua = "PT";

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {
            panel2.Click += trocarFundo;
        }

        private void trocarFundo(object sender, EventArgs e)
        {
            new BackgroundColorModal().ShowDialog();
        }
    }
}
