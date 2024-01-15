using _2___DesktopSP__FollowWS_.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _2___DesktopSP__FollowWS_
{
    public partial class parent : Form
    {
        public Sessao5Entities ctx = new Sessao5Entities();
        public parent()
        {
            InitializeComponent();
            StartPosition = FormStartPosition.CenterScreen;
            FormBorderStyle = FormBorderStyle.FixedSingle;
        }
        private void parent_Load(object sender, EventArgs e)
        {
            putStyle(panel1);
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void putStyle(Control panel)
        {
            foreach (Control item in panel.Controls)
            {
                if (item is Panel || item is FlowLayoutPanel || item is GroupBox || item is UserControl || item is TabControl || item is TabPage)
                {
                    putStyle(item);
                }

                if (item is ComboBox cbox)
                {
                    cbox.DropDownStyle = ComboBoxStyle.DropDownList;
                }

                if (item is DataGridView dataGridView)
                {
                    dataGridView.AllowUserToAddRows = false;
                    dataGridView.AllowUserToDeleteRows = false;
                    dataGridView.ReadOnly = true;
                    dataGridView.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                    dataGridView.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
                    dataGridView.RowHeadersVisible = false;

                }
            }
        }


    }
    public static class Alert
    {
        public static DialogResult info(this string text)
        {
            return MessageBox.Show(text,"information",MessageBoxButtons.OK,MessageBoxIcon.Information);
        }
    }
}
