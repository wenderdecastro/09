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
    public partial class NewNotificationPage : _2___DesktopSP__FollowWS_.parent
    {
        public NewNotificationPage()
        {
            InitializeComponent();

            textBox1.TextChanged += validarCampos;
            textBox2.TextChanged += validarCampos;
            dateTimePicker1.ValueChanged += validarCampos;
            dateTimePicker2.ValueChanged += validarCampos;
            comboBox1.SelectedIndexChanged += validarCampos;
            comboBox2.SelectedIndexChanged += validarCampos;
            button1.Enabled = false;
        }

        private void NewNotificationPage_Load(object sender, EventArgs e)
        {
            dateTimePicker1.MaxDate = DateTime.Now.AddDays(30);
            dateTimePicker2.Format = DateTimePickerFormat.Custom;
            dateTimePicker2.CustomFormat = "hh:mm";

            dateTimePicker2.MaxDate = DateTime.Now.AddHours(1);

            comboBox1.Items.Add("");
            comboBox1.Items.AddRange(ctx.Selecoes.Select(x => x.Nome).ToArray());
            comboBox2.Items.Add("Padrão");
            comboBox2.Items.Add("Urgente");

        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {

        }
        private void validarCampos(object sender, EventArgs e)
        {
            if(textBox1.Text != string.Empty && textBox2.Text != string.Empty && comboBox2.SelectedIndex != -1)
            {
                button1.Enabled = true;
            }
            else button1.Enabled = false; 

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Notificacoes newNtf = new Notificacoes();

            newNtf.Importancia = comboBox2.SelectedValue.ToString();
            newNtf.Titulo = textBox1.Text;
            newNtf.Descricao = textBox2.Text;

            if ( comboBox1.SelectedIndex != 0)
            {
                newNtf.SelecaoId = comboBox1.SelectedIndex;
            }
            newNtf.Importancia = comboBox2.SelectedText.ToString();
            newNtf.DataHoraCadastro = DateTime.Now;
            newNtf.DataHoraEnvio = new DateTime();

            ctx.Notificacoes.Add(newNtf);
            ctx.SaveChanges();

        }
    }
}
