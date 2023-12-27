using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Media;
using System.Net;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Taskool
{
    public partial class Form1 : Form
    {

        dbTarefasEntities1 ctx = new dbTarefasEntities1();
        Image imagemPadrao = Properties.Resources.user;
        Usuario usuarioLogado = new Usuario();
        Image imagemUsuario;
        

        public Form1()
        {
            InitializeComponent();
            label4.Visible = false;
            textBoxUsuario.ShortcutsEnabled = false;
            pictureBox1.DoubleClick += new EventHandler(pictureBox1_DoubleClick);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Timer timer = new Timer();
            timer.Interval = 10;
            timer.Tick += CapsLockTimer;
            timer.Start();
            Settings.mudarTodosOsFundos();
        }

        private void CapsLockTimer(object sender, EventArgs e)
        {
            label4.Visible = IsKeyLocked(Keys.CapsLock);
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
        private void pictureBox1_DoubleClick(object sender, EventArgs e)
        {
            using (OpenFileDialog selectImg = new OpenFileDialog())
            {
                selectImg.Title = "Selecione a Credencial";
                selectImg.Filter = "Arquivo de imagem (*.png;*.jpg)|*.png;*.jpg";

                if (selectImg.ShowDialog() == DialogResult.OK)
                {
                    Image imagemSelecionada = Image.FromFile(selectImg.FileName);
                    pictureBox1.Image = imagemSelecionada;

                }
            }
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            new CadastroPage().ShowDialog();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            try
            {
                Process.Start("%windir%\\system32\\osk.exe");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao abrir o teclado virtual. Cod: " + ex.HResult);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var usuarioBuscado = ctx.Usuarios.FirstOrDefault(x => x.Usuario1 == textBoxUsuario.Text);

            if (usuarioBuscado == null)
            {
                MessageBox.Show("Usuário ou credencial inválida");
                return;
            }

            if (pictureBox1.Image == imagemPadrao || pictureBox1.Image == null)
            {
                MessageBox.Show("Selecione uma credencial para autenticação");
                return;
            }

            ImageConverter cvt = new ImageConverter();
            byte[] byteTentativa = usuarioBuscado.Foto;
            byte[] byteCredencial = (byte[])cvt.ConvertTo(pictureBox1.Image, typeof(byte[]));

            var tentativa64 = Convert.ToBase64String(byteTentativa);
            var credencial64 = Convert.ToBase64String(byteCredencial);
            
            if (!string.Equals(tentativa64, credencial64)){
                SystemSounds.Beep.Play();
                MessageBox.Show("Imagem ou usuário não reconhecido");
                string[] splitNome = usuarioBuscado.Nome.Split(' ');
                logTentativaAcesso(splitNome[0], usuarioBuscado.Codigo);
                return;
            }

            usuarioLogado = usuarioBuscado;
            imagemUsuario = pictureBox1.Image;

            this.Hide();
            new HomePage(usuarioLogado, imagemUsuario).ShowDialog();
            usuarioLogado = null; imagemUsuario = null;
        }

        private void logTentativaAcesso(string nome, int codigo)
        {
            string pastaLogs = @"C:\USER_LOGS";
            string nomeArquivo = $"{nome}{codigo}.txt";
            string pathArquivo = Path.Combine(pastaLogs, nomeArquivo);

            string enderecoIP = string.Empty;

            string hostName = Dns.GetHostName();
            IPAddress[] localIps = Dns.GetHostAddresses(hostName);

            foreach (IPAddress ip in localIps)
            {
                if (ip.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
                {
                    enderecoIP = ip.ToString();
                    break;
                }
            }

            if (!Directory.Exists(pastaLogs))
            {
                Directory.CreateDirectory(pastaLogs);
            }
            if (!File.Exists(pathArquivo))
            {
                string header = "Data;Hora;Usuario;IP\n";
                File.WriteAllText(pathArquivo, header);
            }

            string logEntry = $"{DateTime.Now.ToShortDateString()};{DateTime.Now.ToLongTimeString()};{nome};{enderecoIP}\n";

            try
            {
                File.AppendAllText(pathArquivo, logEntry);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error writing log: {ex.Message}");
            }
        }
    }
}
