using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;

namespace nacional2022
{
    public partial class Ranking : nacional2022.parent
    {
        List<Selecao> selecaoList = new List<Selecao>();
        public Ranking()
        {
            InitializeComponent();
        }

        private void Ranking_Load(object sender, EventArgs e)
        {
            var selecoes = ctx.Selecao.ToList();

            foreach (var time in selecoes)
            {

                var jogosel1 = ctx.Jogos.Where(x => x.Selecao1 == time.IdSelecao).ToList();

                time.vit = jogosel1.Where(x => x.Placar1 > x.Placar2 || x.Penalt1 > x.Penalt2).Count();
                time.e = jogosel1.Where(x => x.Placar1 == x.Placar2).Count();
                time.der = jogosel1.Where(x => x.Placar1 < x.Placar2 || x.Penalt1 < x.Penalt2).Count();

                foreach (var jogo in jogosel1)
                {
                    time.gp += jogo.Placar1;
                }

                var jogosel2 = ctx.Jogos.Where(x => x.Selecao2 == time.IdSelecao).ToList();

                time.vit = jogosel2.Where(x => x.Placar1 < x.Placar2 || x.Penalt1 < x.Penalt2).Count();
                time.der = jogosel2.Where(x => x.Placar1 > x.Placar2 || x.Penalt1 > x.Penalt2).Count();

                foreach (var jogo in jogosel2)
                {
                    time.gp += jogo.Placar2;
                }

                time.pts = (time.vit * 3) + time.e;
                time.pj = jogosel1.Count() + jogosel2.Count();

                selecaoList.Add(time);
            }

            GetRanking();
        }

        private void GetRanking()
        {
            List<Selecao> rankinglist =  new List<Selecao>();
            rankinglist = selecaoList.OrderByDescending(x => x.pts).ToList();

            foreach (var selecao in rankinglist)
            {
                flowLayoutPanel1.Controls.Add(new RankingControl(selecao));
            }
           
        }


    }


}


