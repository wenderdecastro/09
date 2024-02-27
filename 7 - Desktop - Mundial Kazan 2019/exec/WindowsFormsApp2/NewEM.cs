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
        private string selected;

        public NewEM()
        {
            InitializeComponent();
        }


        public NewEM(string selected)
        {
            InitializeComponent();
            this.selected = selected;
        }
        public NewEM(Asset asset)
        {
            InitializeComponent();
            this.asset = asset;
        }

        private void NewEM_Load(object sender, EventArgs e)
        {
            //asset = ctx.Assets.FirstOrDefault(x => x.AssetName == selected);

            label1.Text = asset.AssetSN.ToString();
            label2.Text = asset.AssetName;
            department = ctx.Departments.FirstOrDefault(x => x.ID == asset.DepartmentLocation.DepartmentID);
            label3.Text = department.Name;

            var priorities = ctx.Priorities.ToList();
            foreach (Priority p in priorities)
            {
                comboBox1.Items.Add(p);
            }
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
