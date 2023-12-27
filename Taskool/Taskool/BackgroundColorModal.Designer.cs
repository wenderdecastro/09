namespace Taskool
{
    partial class BackgroundColorModal
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.labelBoasVindas = new System.Windows.Forms.Label();
            this.textBoxHex = new System.Windows.Forms.TextBox();
            this.textBoxRGB = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // labelBoasVindas
            // 
            this.labelBoasVindas.AutoSize = true;
            this.labelBoasVindas.Font = new System.Drawing.Font("Calibri", 28F);
            this.labelBoasVindas.Location = new System.Drawing.Point(240, 40);
            this.labelBoasVindas.Name = "labelBoasVindas";
            this.labelBoasVindas.Size = new System.Drawing.Size(303, 46);
            this.labelBoasVindas.TabIndex = 1;
            this.labelBoasVindas.Text = "Selecione uma cor";
            // 
            // textBoxHex
            // 
            this.textBoxHex.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxHex.Font = new System.Drawing.Font("Segoe UI", 14F);
            this.textBoxHex.Location = new System.Drawing.Point(152, 115);
            this.textBoxHex.Multiline = true;
            this.textBoxHex.Name = "textBoxHex";
            this.textBoxHex.Size = new System.Drawing.Size(486, 61);
            this.textBoxHex.TabIndex = 8;
            this.textBoxHex.TextChanged += new System.EventHandler(this.textBoxHex_TextChanged);
            // 
            // textBoxRGB
            // 
            this.textBoxRGB.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBoxRGB.Font = new System.Drawing.Font("Segoe UI", 14F);
            this.textBoxRGB.Location = new System.Drawing.Point(152, 227);
            this.textBoxRGB.Multiline = true;
            this.textBoxRGB.Name = "textBoxRGB";
            this.textBoxRGB.Size = new System.Drawing.Size(486, 61);
            this.textBoxRGB.TabIndex = 9;
            this.textBoxRGB.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Arial", 14F);
            this.label3.Location = new System.Drawing.Point(148, 189);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(119, 22);
            this.label3.TabIndex = 10;
            this.label3.Text = "Hexadecimal";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Arial", 14F);
            this.label1.Location = new System.Drawing.Point(148, 300);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 22);
            this.label1.TabIndex = 10;
            this.label1.Text = "RGB";
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.button3.Font = new System.Drawing.Font("Segoe UI", 12F);
            this.button3.Location = new System.Drawing.Point(152, 362);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(216, 43);
            this.button3.TabIndex = 13;
            this.button3.Text = "Selecionar cor";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Segoe UI", 12F);
            this.button1.Location = new System.Drawing.Point(422, 362);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(216, 43);
            this.button1.TabIndex = 13;
            this.button1.Text = "Salvar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // BackgroundColorModal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBoxRGB);
            this.Controls.Add(this.textBoxHex);
            this.Controls.Add(this.labelBoasVindas);
            this.Name = "BackgroundColorModal";
            this.Text = "Selecione a cor";
            this.Load += new System.EventHandler(this.BackgroundColorModal_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelBoasVindas;
        private System.Windows.Forms.TextBox textBoxHex;
        private System.Windows.Forms.TextBox textBoxRGB;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button1;
    }
}