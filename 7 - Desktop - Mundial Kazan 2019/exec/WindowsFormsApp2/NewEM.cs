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
    public partial class NewEM : parent
    {
        private Asset asset;
        private Department department;

        public NewEM()
        {
            InitializeComponent();
        }


        public NewEM(Asset asset)
        {
            InitializeComponent();
            this.asset = asset;
        }

        private void NewEM_Load(object sender, EventArgs e)
        {

            label1.Text = asset.AssetSN.ToString();
            label2.Text = asset.AssetName;
            department = ctx.Departments.FirstOrDefault(x => x.ID == asset.DepartmentLocation.DepartmentID);
            label3.Text = department.Name;

            var priorities = ctx.Priorities.ToList();
            foreach (Priority p in priorities)
            {
                comboBox1.Items.Add(p.Name);
            }
            comboBox1.SelectedIndex = 0;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("You need to fill all the fields properly");
                return;
            }

            var date = ctx.EmergencyMaintenances.Where(x => x.AssetID == asset.ID).OrderByDescending(x => x.EMEndDate).ToList()[0];
            if (date.EMEndDate != null)
            {
                MessageBox.Show("The asset already have an open request");
                return;
            }

            EmergencyMaintenance em = new EmergencyMaintenance();

            em.EMReportDate = DateTime.Now;
            em.DescriptionEmergency = textBox1.Text;
            em.OtherConsiderations = textBox2.Text;
            em.PriorityID = comboBox1.SelectedIndex + 1;

            ctx.EmergencyMaintenances.Add(em);
            ctx.SaveChanges();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
