using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class AlunosRanking : Form
    {
        LyonCompanyDBEntities ctx = new LyonCompanyDBEntities();
        DataTable tb = new DataTable();

        public AlunosRanking()
        {
            InitializeComponent();
        }
        private void AlunosRanking_Load(object sender, EventArgs e)
        {
            List<Ranking> rk = new List<Ranking>();
            List<Alunos> al = new List<Alunos>();

            rk = ctx.Ranking.ToList();
            al = ctx.Alunos.ToList();

            tb.Columns.Add("Posicao", typeof(int));
            tb.Columns.Add("Aluno", typeof(string));
            tb.Columns.Add("Pontuacao", typeof(int));
            tb.Columns.Add("Vitorias", typeof(int));
            tb.Columns.Add("Derrotas", typeof(int));

            foreach (var item in rk)
            {
                
                
                var aluno = ctx.Alunos.FirstOrDefault(x => x.ID == item.Aluno);
                tb.Rows.Add(item.Posicao, aluno.Aluno, item.Pontuacao, item.Vitorias, item.Derrotas);
                
            }

            dataGridView1.DataSource = tb;
     
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            DataView dv = tb.DefaultView;
            dv.RowFilter = "Aluno LIKE '" + textBox1.Text + "%'";
            dataGridView1.DataSource = dv;

        }
    }
}
