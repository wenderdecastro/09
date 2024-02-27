using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class FormEM : WindowsFormsApp2.parent
    {
        int selected = 0;
        public FormEM()
        {
            InitializeComponent();
            
        }

        private void FormEM_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("Asset SN");
            dt.Columns.Add("Asset Name");
            dt.Columns.Add("Last Closed EM");
            dt.Columns.Add("Number of EMs");

            var ems = ctx.EmergencyMaintenances.ToList();
            var assets = ctx.Assets.ToList();
            EmergencyMaintenance a = new EmergencyMaintenance();
            foreach (var asset in assets)
            {

                var totalEms = ems.Where(x => x.AssetID == asset.ID).Count();
                var lc = "";
                if (totalEms != 0)
                {

                    var date = ems.Where(x => x.AssetID == asset.ID).OrderByDescending(x => x.EMEndDate).ToList()[0].EMEndDate;
                    if(date != null)
                    lc = date.Value.ToString("yyyy/MM/dd");
                }
                
                //a = ems.Where(x => x.AssetID == asset.ID && x.EMEndDate != null &&))
                dt.Rows.Add(asset.AssetSN, asset.AssetName, lc, totalEms);
            }
            
           

            dataGridView1.DataSource = dt;

            foreach (DataGridViewRow row in dataGridView1.Rows)
            {
                var assetname = row.Cells[1].Value.ToString();

                if (Convert.ToInt32(row.Cells[3].Value.ToString()) == 0) continue;
                
                    var asset = ctx.EmergencyMaintenances.Where(x => x.Asset.AssetName == assetname).OrderBy(x => x.EMEndDate).ToList()[0];
                    if (asset.EMEndDate == null)
                    {
                        row.DefaultCellStyle.BackColor = Color.LightBlue;
                    }
                    
                

            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            selected = dataGridView1.Rows[e.RowIndex].Index;

            return;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (selected != 0)
            {
                var asset = ctx.Assets.Find(selected);
                new NewEM(asset).ShowDialog();
                return;
            }

            MessageBox.Show("You need to select an asset.");

        }
    }
}
