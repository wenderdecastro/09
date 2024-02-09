using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace nacional2022
{
    public partial class RecoverPassword : Form
    {
        public RecoverPassword()
        {
            InitializeComponent();
            textBox1.ReadOnly = true;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void RecoverPassword_Load(object sender, EventArgs e)
        {
            var characters = "abcdefghijklmnopqrstuvwxyz1234567890";

            var random = new Random();
            var result = new string(
        Enumerable.Repeat(characters, 6)
                  .Select(s => s[random.Next(s.Length)])
                  .ToArray());

            textBox1.Text = result;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Clipboard.SetText(textBox1.Text);
            new LoginPage(true).ShowDialog();
            this.Close();
        }
    }
}
