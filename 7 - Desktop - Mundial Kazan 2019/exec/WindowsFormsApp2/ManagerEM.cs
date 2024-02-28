using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class ManagerEM : parent
    {
        private Employee user;
        private List<EmergencyMaintenance> ems = new List<EmergencyMaintenance>();
        EmergencyMaintenance selected = new EmergencyMaintenance();
        public ManagerEM(Employee user)
        {
            InitializeComponent();
            this.user = user;
            dataGridView1.CellClick += select;



        }

        private void select(object sender, DataGridViewCellEventArgs e)
        {
            selected = ems[e.RowIndex];
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (selected.Asset == null)
            {
                MessageBox.Show("Select one request");
                return;
            }


            new ManagerEMDetails(selected).ShowDialog();
            return;
        }


        private void ManagerEM_Load(object sender, EventArgs e)
        {
            DataTable td = new DataTable();
            td.Columns.Add("Asset SN");
            td.Columns.Add("Asset Name");
            td.Columns.Add("Report Date");
            td.Columns.Add("Employee Full Name");
            td.Columns.Add("Department");


            var ems1 = ctx.EmergencyMaintenances.Where(x => x.EMEndDate == null && x.PriorityID == 1).OrderBy(x => x.EMReportDate).ToList();
            var ems2 = ctx.EmergencyMaintenances.Where(x => x.EMEndDate == null && x.PriorityID == 2).OrderBy(x => x.EMReportDate).ToList();
            var ems3 = ctx.EmergencyMaintenances.Where(x => x.EMEndDate == null && x.PriorityID == 3).OrderBy(x => x.EMReportDate).ToList();


            ems.AddRange(ems1);
            ems.AddRange(ems2);
            ems.AddRange(ems3);


            foreach (var em in ems)
            {
                var department = ctx.Departments.Find(em.Asset.DepartmentLocation.DepartmentID).Name;
                td.Rows.Add(em.Asset.AssetSN, em.Asset.AssetName, em.EMReportDate.ToShortDateString(), (em.Asset.Employee.FirstName + " " + em.Asset.Employee.LastName), department);
            }

            dataGridView1.DataSource = td;
        }
    }
}
