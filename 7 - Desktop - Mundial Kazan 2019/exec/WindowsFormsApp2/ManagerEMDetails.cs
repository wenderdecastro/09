using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class ManagerEMDetails : WindowsFormsApp2.parent
    {
        private EmergencyMaintenance em = new EmergencyMaintenance();
        private Department department;
        bool HasEndDate = false;
        public ManagerEMDetails()
        {
            InitializeComponent();
        }

        public ManagerEMDetails(EmergencyMaintenance em)
        {
            InitializeComponent();
            this.em = em;
            label1.Text = em.Asset.AssetName;
        }

        private void ManagerEMDetails_Load(object sender, EventArgs e)
        {
            dateTimePicker2.Enabled = false;
            label1.Text = em.Asset.AssetSN.ToString();
            label2.Text = em.Asset.AssetName;
            department = ctx.Departments.FirstOrDefault(x => x.ID == em.Asset.DepartmentLocation.DepartmentID);
            label3.Text = department.Name;

            dateTimePicker1.Value = dateTimePicker1.MinDate;

            
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {


            if(dateTimePicker1.Value == dateTimePicker1.MinDate)
            {
                MessageBox.Show("You need to insert an start date");
                return;
            }
            if(textBox2.Text == "")
            {
                MessageBox.Show("You need to fill all fields properly");
                return;
            }

            if (dateTimePicker1.Value > dateTimePicker2.Value)
            {
                MessageBox.Show("The start date must be earlier than the end date");
                return;
            }
            if (dateTimePicker1.Value < em.EMReportDate)
            {
                MessageBox.Show("The start date must be later than the report date");
                return;
            }

            em.EMStartDate = dateTimePicker1.Value;
            em.EMEndDate = null;
            if(HasEndDate) em.EMEndDate = dateTimePicker2.Value;
            em.EMTechnicianNote = textBox2.Text;

            ctx.EmergencyMaintenances.AddOrUpdate(em);
            ctx.SaveChanges();
            MessageBox.Show("EM Updated");
            this.Hide();
        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {
            dateTimePicker1.Enabled = false;
            textBox2.Enabled = false;
            dateTimePicker2.Enabled = false;
            HasEndDate = true;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            if (textBox2.Text != "")
            {
                dateTimePicker2.Enabled=true;
                return;
            }
            dateTimePicker2.Enabled = false;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
