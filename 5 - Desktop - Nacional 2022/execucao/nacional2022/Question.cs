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
        Usuarios user;
        List<Pergunta> perg = new List<Pergunta>();
        int numero = 0; 
        int pergunta = 1;
        public Question(List<Pergunta> perguntas)
        {
            InitializeComponent();
            perg = perguntas;

        }

        private void Question_Load(object sender, EventArgs e)
        {
            textBox1.Visible = false;
            dateTimePicker1.Visible = true;
            LoadPergunta();

        }

        private void LoadPergunta()
        {
           
            label1.Text = perg[numero].pergunta1;
            CheckPergunta();
        }

        private bool CheckPergunta()
        {
            switch (pergunta)
            {
                case 1:
                    textBox1.Visible = false;
                    dateTimePicker1.Visible = true;
                    Confirm(logado.nascimento.Date + " "+ dateTimePicker1.Value.Date);
                    return logado.nascimento.Date == dateTimePicker1.Value.Date;
                case 2:
                    dateTimePicker1.Visible = false;
                    textBox1.Visible = true;
                    Confirm(logado.timeFavorito + textBox1.Text);
                    return logado.timeFavorito == textBox1.Text;
                case 3:
                    Confirm(logado.corFavorita + textBox1.Text);
                    return logado.corFavorita == textBox1.Text;
                case 4:
                    
                    return logado.apelido == textBox1.Text;
            }

            return false;

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

            if (CheckPergunta())
            {
                new RecoverPassword().ShowDialog();
                this.Hide();
                this.Close();
                return;
            }


            textBox1.Clear();
            Alert("Resposta inválida");
            numero++;
            pergunta++;
            if (numero + 1 > perg.Count) {
                numero = 0;
                pergunta = 1;
            }
            textBox1.Clear();
            LoadPergunta();

        }

    }

}

