﻿
namespace KİM_BİLİR
{
    partial class Form1
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
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.ucretbtn = new System.Windows.Forms.Button();
            this.kuponbtn = new System.Windows.Forms.Button();
            this.xbtn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.Transparent;
            this.button3.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.button3.FlatAppearance.BorderSize = 3;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Courier New", 30F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.ForeColor = System.Drawing.Color.Lime;
            this.button3.Location = new System.Drawing.Point(473, 39);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(163, 54);
            this.button3.TabIndex = 3;
            this.button3.Text = "KİM";
            this.button3.UseVisualStyleBackColor = false;
            // 
            // button4
            // 
            this.button4.BackColor = System.Drawing.Color.Transparent;
            this.button4.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.button4.FlatAppearance.BorderSize = 3;
            this.button4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button4.Font = new System.Drawing.Font("Courier New", 30F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.ForeColor = System.Drawing.Color.Lime;
            this.button4.Location = new System.Drawing.Point(536, 83);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(213, 54);
            this.button4.TabIndex = 3;
            this.button4.Text = "BİLİR ?";
            this.button4.UseVisualStyleBackColor = false;
            // 
            // ucretbtn
            // 
            this.ucretbtn.BackColor = System.Drawing.Color.Transparent;
            this.ucretbtn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ucretbtn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.ucretbtn.FlatAppearance.BorderSize = 3;
            this.ucretbtn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.ucretbtn.Font = new System.Drawing.Font("Courier New", 30F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ucretbtn.ForeColor = System.Drawing.Color.Lime;
            this.ucretbtn.Location = new System.Drawing.Point(102, 302);
            this.ucretbtn.Name = "ucretbtn";
            this.ucretbtn.Size = new System.Drawing.Size(402, 54);
            this.ucretbtn.TabIndex = 3;
            this.ucretbtn.Text = "ÜÇRETLİ GİRİŞ";
            this.ucretbtn.UseVisualStyleBackColor = false;
            this.ucretbtn.Click += new System.EventHandler(this.ucretbtn_Click);
            // 
            // kuponbtn
            // 
            this.kuponbtn.BackColor = System.Drawing.Color.Transparent;
            this.kuponbtn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.kuponbtn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.kuponbtn.FlatAppearance.BorderSize = 3;
            this.kuponbtn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.kuponbtn.Font = new System.Drawing.Font("Courier New", 30F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.kuponbtn.ForeColor = System.Drawing.Color.Lime;
            this.kuponbtn.Location = new System.Drawing.Point(607, 302);
            this.kuponbtn.Name = "kuponbtn";
            this.kuponbtn.Size = new System.Drawing.Size(402, 54);
            this.kuponbtn.TabIndex = 3;
            this.kuponbtn.Text = "KUPON İLE GİRİŞ";
            this.kuponbtn.UseVisualStyleBackColor = false;
            this.kuponbtn.Click += new System.EventHandler(this.kuponbtn_Click);
            // 
            // xbtn
            // 
            this.xbtn.BackColor = System.Drawing.Color.Transparent;
            this.xbtn.FlatAppearance.BorderSize = 2;
            this.xbtn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.xbtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.xbtn.ForeColor = System.Drawing.Color.Lime;
            this.xbtn.Location = new System.Drawing.Point(1097, 0);
            this.xbtn.Name = "xbtn";
            this.xbtn.Size = new System.Drawing.Size(47, 36);
            this.xbtn.TabIndex = 4;
            this.xbtn.Text = "X";
            this.xbtn.UseVisualStyleBackColor = false;
            this.xbtn.Click += new System.EventHandler(this.xbtn_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.BackgroundImage = global::KİM_BİLİR.Properties.Resources.ArkaPlan1;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1144, 499);
            this.ControlBox = false;
            this.Controls.Add(this.xbtn);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.kuponbtn);
            this.Controls.Add(this.ucretbtn);
            this.Controls.Add(this.button4);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.ForeColor = System.Drawing.Color.Chocolate;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "KİMBİLİR";
            this.TransparencyKey = System.Drawing.Color.Black;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button ucretbtn;
        private System.Windows.Forms.Button kuponbtn;
        private System.Windows.Forms.Button xbtn;
    }
}

