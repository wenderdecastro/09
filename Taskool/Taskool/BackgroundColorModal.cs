using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace Taskool
{
    public partial class BackgroundColorModal : Form
    {
        Color corFundo = SystemColors.Control;
        Color corRGB;
        Color corHex;
        public BackgroundColorModal()
        {
            InitializeComponent();
        }


        private void BackgroundColorModal_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            ColorDialog dlg = new ColorDialog();
            dlg.AllowFullOpen = false;
            dlg.ShowHelp = false;
            dlg.Color = SystemColors.Control;


            if (dlg.ShowDialog() == DialogResult.OK)
            {
                textBoxRGB.Text = ConverterRGB(dlg.Color);
                textBoxHex.Text = ConverterHex(dlg.Color);
            }
        }




        private static string ConverterHex(Color c) => $"#{c.R:X2}{c.G:X2}{c.B:X2}";
        private static string ConverterRGB(Color c) => $"{c.R},{c.G},{c.B}";

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            HandleRGB(textBoxRGB.Text.Trim());
        }

        private void textBoxHex_TextChanged(object sender, EventArgs e)
        {
            HandleHex(textBoxHex.Text.Trim());
        }


        private Color HandleRGB(string corTextBoxRGB)
        {

            if (!string.IsNullOrEmpty(corTextBoxRGB) && ValidarRGB(corTextBoxRGB))
            {

                string[] rgbSplit = corTextBoxRGB.Split(',');
                int r = int.Parse(rgbSplit[0]);
                int g = int.Parse(rgbSplit[1]);
                int b = int.Parse(rgbSplit[2]);

                if (r >= 0 && r <= 255 && g >= 0 && g <= 255 && b >= 0 && b <= 255)
                {
                    corRGB = Color.FromArgb(r, g, b);
                    BackColor = corRGB;
                    aplicarCor(corRGB);
                    textBoxHex.Text = ConverterHex(corRGB);
                    return corRGB;

                }
                return SystemColors.Control;
            }
            return SystemColors.Control;
        }

        private Color HandleHex(string corTextBoxHex)
        {
            if (!string.IsNullOrEmpty(corTextBoxHex) && ValidarHexadecimal(corTextBoxHex))
            {
                corHex = ColorTranslator.FromHtml("#" + corTextBoxHex);
                BackColor = corHex;
                aplicarCor(corHex);
                textBoxRGB.Text = ConverterRGB(corHex);
                return corHex;
            }
            return SystemColors.Control;
        }

        private void aplicarCor(Color cor)
        {
            corFundo = cor;
        }

        private bool ValidarHexadecimal(string hex)
        {
            return Regex.IsMatch(hex, @"^[0-9a-fA-F]{6}$");
        }

        private bool ValidarRGB(string rgb)
        {
            return Regex.IsMatch(rgb, @"^\s*(\d{1,3}\s*,\s*){2}\d{1,3}\s*$");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Settings.mudarTodosOsFundos(corFundo);
        }
    }
}
