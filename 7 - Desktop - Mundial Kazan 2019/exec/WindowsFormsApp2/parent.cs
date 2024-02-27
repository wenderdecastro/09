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
    public partial class parent : Form
    {
        public Session2Entities ctx = new Session2Entities();
        public parent()
        {
            InitializeComponent();
            this.StartPosition = FormStartPosition.CenterScreen;
        }

        private void parent_Load(object sender, EventArgs e)
        {
            foreach (Control c in this.Controls)
            {
                if (c is DataGridView)
                {

                    ((DataGridView)c).ReadOnly = true;
                    ((DataGridView)c).AutoSize = false;
                    ((DataGridView)c).AllowUserToAddRows = false;
                    ((DataGridView)c).AllowUserToDeleteRows = false;
                    ((DataGridView)c).AllowDrop = false;
                    ((DataGridView)c).AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                    ((DataGridView)c).AllowUserToResizeColumns = false;
                    ((DataGridView)c).AllowUserToResizeRows = false;
                    ((DataGridView)c).SelectionMode = DataGridViewSelectionMode.FullRowSelect;
                    ((DataGridView)c).MultiSelect = false;


                }
            }
        }
    }
}
