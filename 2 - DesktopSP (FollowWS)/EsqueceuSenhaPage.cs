using _2___DesktopSP__FollowWS_.Properties;
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
    public partial class EsqueceuSenhaPage : parent
    {

        Usuarios user = new Usuarios();
        bool senhaValida;

        public EsqueceuSenhaPage()
        {
            InitializeComponent();
            textBox1.TextChanged += validarSenha;
            textBox2.TextChanged += validarSenha;

            senhaValida = textBox1.Enabled = textBox2.Enabled = button1.Enabled = false;
        }


        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            new LoginPage().ShowDialog();
            this.Close();
        }

        private void EsqueceuSenhaPage_Load_1(object sender, EventArgs e)
        {

            button1.Enabled = false;

            //lista as seleções no dropdown
            comboBox1.Items.AddRange(ctx.Selecoes.Select(x => x.Nome).ToArray());

            //não permite usuarios com menos de 18 anos
            dateTimePicker1.MaxDate = DateTime.Now.AddYears(-18);
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void linkLabel2_LinkClicked_1(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            new LoginPage().ShowDialog();
            this.Close();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void validarSenha(object sender, EventArgs e)
        {
            //validação da senha
            if (textBox1.Text is "" || textBox1.Text.Length < 8 || textBox1.Text.Length > 15 || textBox1.Text.Any(x => char.IsUpper(x)) || textBox1.Text.Any(x => char.IsSymbol(x)) || !(textBox1.Text.Any(x => char.IsNumber(x))))
                senhaValida = button1.Enabled = false;
            else
            {
                senhaValida = true;

                textBox4.BackColor = Color.Green;
                textBox4.Text = "Forte";
                var repetition1 = textBox1.Text.GroupBy(x => x).Any(g => g.Count() == 2);
                var repetition2 = textBox1.Text.GroupBy(x => x).Any(g => g.Count() > 2);

                if (repetition1)
                {
                    textBox4.BackColor = Color.Yellow;
                    textBox4.Text = "Medio";
                }
                if (repetition2)
                {
                    textBox4.BackColor = Color.Red;
                    textBox4.Text = "Fraca";

                }
                if (textBox2.Text != textBox1.Text)
                {

                    textBox3.ForeColor = Color.White;
                    textBox3.BackColor = Color.Red;
                    textBox3.Text = "Senhas não correspondem";
                    senhaValida = false;

                }
                else
                {
                    textBox3.ForeColor = Color.White;
                    textBox3.BackColor = Color.Green;
                    textBox3.Text = "Senhas Identicas";
                    if (senhaValida)
                    {
                        button1.Enabled = true;
                    }
                }

            }

            


        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex + 1 == User.logado.TimeFavoritoId && dateTimePicker1.Value.ToShortDateString() == User.logado.Nascimento.ToShortDateString())
            {
                textBox1.Enabled = textBox2.Enabled = true;
                return;
            }

            textBox1.Enabled = textBox2.Enabled = false;

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            if (senhaValida == true)
            {
                user.Senha = textBox1.Text;
                ctx.SaveChanges();
            }
        }
    }
}
