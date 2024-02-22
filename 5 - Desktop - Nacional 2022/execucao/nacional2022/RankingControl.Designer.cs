namespace nacional2022
{
    partial class RankingControl
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.id = new System.Windows.Forms.Label();
            this.nomedotime = new System.Windows.Forms.Label();
            this.pts = new System.Windows.Forms.Label();
            this.pj = new System.Windows.Forms.Label();
            this.vit = new System.Windows.Forms.Label();
            this.e = new System.Windows.Forms.Label();
            this.der = new System.Windows.Forms.Label();
            this.gp = new System.Windows.Forms.Label();
            this.partida3 = new System.Windows.Forms.PictureBox();
            this.partida2 = new System.Windows.Forms.PictureBox();
            this.partida1 = new System.Windows.Forms.PictureBox();
            this.foto = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.partida3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.partida2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.partida1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.foto)).BeginInit();
            this.SuspendLayout();
            // 
            // id
            // 
            this.id.AutoSize = true;
            this.id.Location = new System.Drawing.Point(12, 12);
            this.id.Name = "id";
            this.id.Size = new System.Drawing.Size(13, 13);
            this.id.TabIndex = 0;
            this.id.Text = "1";
            // 
            // nomedotime
            // 
            this.nomedotime.AutoSize = true;
            this.nomedotime.Location = new System.Drawing.Point(81, 12);
            this.nomedotime.Name = "nomedotime";
            this.nomedotime.Size = new System.Drawing.Size(70, 13);
            this.nomedotime.TabIndex = 0;
            this.nomedotime.Text = "nome do time";
            // 
            // pts
            // 
            this.pts.AutoSize = true;
            this.pts.Location = new System.Drawing.Point(310, 12);
            this.pts.Name = "pts";
            this.pts.Size = new System.Drawing.Size(13, 13);
            this.pts.TabIndex = 0;
            this.pts.Text = "1";
            // 
            // pj
            // 
            this.pj.AutoSize = true;
            this.pj.Location = new System.Drawing.Point(338, 12);
            this.pj.Name = "pj";
            this.pj.Size = new System.Drawing.Size(13, 13);
            this.pj.TabIndex = 0;
            this.pj.Text = "1";
            // 
            // vit
            // 
            this.vit.AutoSize = true;
            this.vit.Location = new System.Drawing.Point(364, 12);
            this.vit.Name = "vit";
            this.vit.Size = new System.Drawing.Size(13, 13);
            this.vit.TabIndex = 0;
            this.vit.Text = "1";
            // 
            // e
            // 
            this.e.AutoSize = true;
            this.e.Location = new System.Drawing.Point(391, 12);
            this.e.Name = "e";
            this.e.Size = new System.Drawing.Size(13, 13);
            this.e.TabIndex = 0;
            this.e.Text = "1";
            // 
            // der
            // 
            this.der.AutoSize = true;
            this.der.Location = new System.Drawing.Point(417, 12);
            this.der.Name = "der";
            this.der.Size = new System.Drawing.Size(13, 13);
            this.der.TabIndex = 0;
            this.der.Text = "1";
            // 
            // gp
            // 
            this.gp.AutoSize = true;
            this.gp.Location = new System.Drawing.Point(445, 12);
            this.gp.Name = "gp";
            this.gp.Size = new System.Drawing.Size(13, 13);
            this.gp.TabIndex = 0;
            this.gp.Text = "1";
            // 
            // partida3
            // 
            this.partida3.Location = new System.Drawing.Point(628, 7);
            this.partida3.Name = "partida3";
            this.partida3.Size = new System.Drawing.Size(20, 20);
            this.partida3.TabIndex = 1;
            this.partida3.TabStop = false;
            this.partida3.Click += new System.EventHandler(this.pictureBox4_Click);
            // 
            // partida2
            // 
            this.partida2.Location = new System.Drawing.Point(589, 7);
            this.partida2.Name = "partida2";
            this.partida2.Size = new System.Drawing.Size(20, 20);
            this.partida2.TabIndex = 1;
            this.partida2.TabStop = false;
            this.partida2.Click += new System.EventHandler(this.pictureBox3_Click);
            // 
            // partida1
            // 
            this.partida1.Location = new System.Drawing.Point(551, 7);
            this.partida1.Name = "partida1";
            this.partida1.Size = new System.Drawing.Size(20, 20);
            this.partida1.TabIndex = 1;
            this.partida1.TabStop = false;
            this.partida1.Click += new System.EventHandler(this.pictureBox2_Click);
            // 
            // foto
            // 
            this.foto.Location = new System.Drawing.Point(37, 5);
            this.foto.Name = "foto";
            this.foto.Size = new System.Drawing.Size(25, 25);
            this.foto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.foto.TabIndex = 1;
            this.foto.TabStop = false;
            // 
            // RankingControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.partida3);
            this.Controls.Add(this.partida2);
            this.Controls.Add(this.partida1);
            this.Controls.Add(this.foto);
            this.Controls.Add(this.vit);
            this.Controls.Add(this.gp);
            this.Controls.Add(this.der);
            this.Controls.Add(this.pj);
            this.Controls.Add(this.e);
            this.Controls.Add(this.pts);
            this.Controls.Add(this.nomedotime);
            this.Controls.Add(this.id);
            this.Name = "RankingControl";
            this.Size = new System.Drawing.Size(667, 34);
            ((System.ComponentModel.ISupportInitialize)(this.partida3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.partida2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.partida1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.foto)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label id;
        private System.Windows.Forms.Label nomedotime;
        private System.Windows.Forms.Label pts;
        private System.Windows.Forms.Label pj;
        private System.Windows.Forms.Label vit;
        private System.Windows.Forms.Label e;
        private System.Windows.Forms.Label der;
        private System.Windows.Forms.Label gp;
        private System.Windows.Forms.PictureBox foto;
        private System.Windows.Forms.PictureBox partida1;
        private System.Windows.Forms.PictureBox partida2;
        private System.Windows.Forms.PictureBox partida3;
    }
}
