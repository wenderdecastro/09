using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace nacional2022
{
    public partial class Question : nacional2022.parent
    {
        int numero = 1;
        public Question()
        {
            dateTimePicker1.Visible = false;
            InitializeComponent();
        }

        private void Question_Load(object sender, EventArgs e)
        {
            textBox1.Visible = false;
            dateTimePicker1.Visible = true;
            LoadPergunta();




        }

        private void LoadPergunta()
        {
            label1.Text = perguntas[numero].pergunta1;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var user = new Usuarios();
            if (numero == 1)
            {
                user = ctx.Usuarios.FirstOrDefault(x => x.nascimento == dateTimePicker1.Value);
            }
            else if (numero == 2)
            {
                user = ctx.Usuarios.FirstOrDefault(x => x.timeFavorito == textBox1.Text);
            }
            else if (numero == 3)
            {
                user = ctx.Usuarios.FirstOrDefault(x => x.corFavorita == textBox1.Text);
            }
            else if(numero == 4)
            {
                user = ctx.Usuarios.FirstOrDefault(x => x.apelido == textBox1.Text);
            }

            if (user != null)
            {
                new RecoverPassword().ShowDialog();
            }

            if (user == null && numero == 1)
            {
                dateTimePicker1.Visible = false;
                textBox1.Visible = true;
                textBox1.Clear();
                return;
            }

            textBox1.Clear();
            Alert("Resposta inválida");
            numero++;

        }

    }

}

