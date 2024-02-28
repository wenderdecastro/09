using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class Login : parent
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            textBox1.Text = "lyn";
            textBox2.Text = "1234";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var user = ctx.Employees.FirstOrDefault(x => x.Username == textBox1.Text && x.Password == textBox2.Text);
            if (user != null)
            {
                if (user.Username != null)
                {

                    if (user.isAdmin == true)
                    {
                        new ManagerEM(user).Show();
                        this.Hide();
                        return;
                    }

                    new FormEM(user).Show();
                    this.Hide();
                    return;
                }
                MessageBox.Show("User doesn't contain an username.");
            }

            MessageBox.Show("User not found.");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
