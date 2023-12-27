using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Taskool
{
    public partial class CadastroPage : Form
    {

        dbTarefasEntities1 ctx = new dbTarefasEntities1();
        Image imagemPadrao = Properties.Resources.user;
        public CadastroPage()
        {
            InitializeComponent();
            InputDestaqueHandler();
            pictureBox1.Image = imagemPadrao;
        }
        private void CadastroPage_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
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


        private void button2_Click(object sender, EventArgs e)
        {
            if (textBoxNome.Text == "" || textBoxEmail.Text == "" || textBoxTelefone.Text == "" || textBoxUsuario.Text == "" || dateTimePicker1.Value > DateTime.Now)
            {
                MessageBox.Show("Preencha todos os campos corretamente.");
                return;
            }

            var emailBuscado = ctx.Usuarios.FirstOrDefault(x => x.Email == textBoxEmail.Text);
            if (emailBuscado != null)
            {
                MessageBox.Show("Email já cadastrado");
                return;
            }

            if (!validarEmail(textBoxEmail.Text))
            {
                MessageBox.Show("Email inválido");
                return;
            }

            if (!validarTelefone(textBoxTelefone.Text))
            {
                MessageBox.Show("Telefone inválido");
                return;
            }

            Usuario novoUsuario = new Usuario();

            novoUsuario.Nome = textBoxNome.Text;
            novoUsuario.Email = textBoxEmail.Text;
            novoUsuario.Telefone = textBoxTelefone.Text;
            novoUsuario.Usuario1 = textBoxUsuario.Text;

            if (pictureBox1.Image == imagemPadrao || pictureBox1.Image == null)
            {
                MessageBox.Show("Selecione uma imagem para credencial");
                return;
            }

            ImageConverter cvt = new ImageConverter();
            byte[] imgToByte = (byte[])cvt.ConvertTo(pictureBox1.Image, typeof(byte[]));
            novoUsuario.Foto = imgToByte;

            ctx.Usuarios.Add(novoUsuario);
            ctx.SaveChanges();

            MessageBox.Show("Usuário Cadastrado com sucesso!!");
            textBoxNome.Text = "";
            textBoxEmail.Text = "";
            textBoxTelefone.Text = "";
            textBoxUsuario.Text = "";
            dateTimePicker1.Value = DateTime.Now;
            pictureBox1.Image = Properties.Resources.user;

        }
        private bool validarEmail(string email)
        {
            return Regex.IsMatch(email, @"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z", RegexOptions.IgnoreCase);
        }
        private bool validarTelefone(string telefone)
        {
            return Regex.IsMatch(telefone, "^\\(?(?:[14689][1-9]|2[12478]|3[1234578]|5[1345]|7[134579])\\)? ?(?:[2-8]|9[0-9])[0-9]{3}\\-?[0-9]{4}$");
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }
        private void InputDestaqueHandler()
        {
            textBoxEmail.Enter += DestacarInput;
            textBoxEmail.Leave += ResetInput;

            textBoxNome.Enter += DestacarInput;
            textBoxNome.Leave += ResetInput;

            textBoxTelefone.Enter += DestacarInput;
            textBoxTelefone.Leave += ResetInput;

            textBoxUsuario.Enter += DestacarInput;
            textBoxUsuario.Leave += ResetInput;
        }

        private void DestacarInput(object sender, EventArgs e)
        {
            if (sender is TextBox textBox)
            {
                textBox.BackColor = SystemColors.Highlight;
            }
        }

        private void ResetInput(object sender, EventArgs args)
        {
            if (sender is TextBox textBox)
            {
                textBox.BackColor = SystemColors.Window;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }


        private void button3_Click(object sender, EventArgs e)
        {
            string[] splitNome = textBoxNome.Text.Trim().Split(' ');

            if (splitNome.Length < 2)
            {
                MessageBox.Show("O nome deve conter ao menos um sobrenome.");
                return;
            }
            var sugestaoNumeros = dateTimePicker1.Text.Substring(dateTimePicker1.Text.Length - 2);

            var nomeUsuario = $"{splitNome[0]}.{splitNome[splitNome.Length - 1]}{sugestaoNumeros}";

            var usuarioBuscado = ctx.Usuarios.FirstOrDefault(x => x.Usuario1 == nomeUsuario);

            if (usuarioBuscado != null)
            {
                MessageBox.Show("Não foi possível gerar aleatório");
                return;

            }

            textBoxUsuario.Text = nomeUsuario;

        }

        private void textBoxUsuario_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
