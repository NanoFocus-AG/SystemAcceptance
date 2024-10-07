namespace SystemAcceptance
{
    partial class PdfOptions
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
            this.MarginTop = new System.Windows.Forms.NumericUpDown();
            this.button1 = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.topLbl = new System.Windows.Forms.Label();
            this.MarginRight = new System.Windows.Forms.NumericUpDown();
            this.MarginLeft = new System.Windows.Forms.NumericUpDown();
            this.bottomLbl = new System.Windows.Forms.Label();
            this.MarginBottom = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.MarginTop)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.MarginRight)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.MarginLeft)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.MarginBottom)).BeginInit();
            this.SuspendLayout();
            // 
            // MarginTop
            // 
            this.MarginTop.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.MarginTop.Location = new System.Drawing.Point(77, 43);
            this.MarginTop.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MarginTop.Name = "MarginTop";
            this.MarginTop.Size = new System.Drawing.Size(66, 21);
            this.MarginTop.TabIndex = 0;
            // 
            // button1
            // 
            this.button1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.button1.Location = new System.Drawing.Point(317, 173);
            this.button1.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(88, 40);
            this.button1.TabIndex = 1;
            this.button1.Text = "Ok";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.MarginTop);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.topLbl);
            this.groupBox1.Controls.Add(this.MarginRight);
            this.groupBox1.Controls.Add(this.MarginLeft);
            this.groupBox1.Controls.Add(this.bottomLbl);
            this.groupBox1.Controls.Add(this.MarginBottom);
            this.groupBox1.Location = new System.Drawing.Point(17, 12);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.groupBox1.Size = new System.Drawing.Size(388, 152);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Page Margins";
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(216, 47);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(27, 15);
            this.label1.TabIndex = 3;
            this.label1.Text = "Left";
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(216, 91);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(36, 15);
            this.label2.TabIndex = 4;
            this.label2.Text = "Right";
            // 
            // topLbl
            // 
            this.topLbl.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.topLbl.AutoSize = true;
            this.topLbl.Location = new System.Drawing.Point(13, 45);
            this.topLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.topLbl.Name = "topLbl";
            this.topLbl.Size = new System.Drawing.Size(28, 15);
            this.topLbl.TabIndex = 1;
            this.topLbl.Text = "Top";
            // 
            // MarginRight
            // 
            this.MarginRight.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.MarginRight.Location = new System.Drawing.Point(283, 89);
            this.MarginRight.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MarginRight.Name = "MarginRight";
            this.MarginRight.Size = new System.Drawing.Size(66, 21);
            this.MarginRight.TabIndex = 7;
            // 
            // MarginLeft
            // 
            this.MarginLeft.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.MarginLeft.Location = new System.Drawing.Point(283, 39);
            this.MarginLeft.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MarginLeft.Name = "MarginLeft";
            this.MarginLeft.Size = new System.Drawing.Size(66, 21);
            this.MarginLeft.TabIndex = 6;
            // 
            // bottomLbl
            // 
            this.bottomLbl.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.bottomLbl.AutoSize = true;
            this.bottomLbl.Location = new System.Drawing.Point(13, 93);
            this.bottomLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.bottomLbl.Name = "bottomLbl";
            this.bottomLbl.Size = new System.Drawing.Size(46, 15);
            this.bottomLbl.TabIndex = 2;
            this.bottomLbl.Text = "Bottom";
            // 
            // MarginBottom
            // 
            this.MarginBottom.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.MarginBottom.Location = new System.Drawing.Point(77, 90);
            this.MarginBottom.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MarginBottom.Name = "MarginBottom";
            this.MarginBottom.Size = new System.Drawing.Size(66, 21);
            this.MarginBottom.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(150, 45);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(29, 15);
            this.label3.TabIndex = 8;
            this.label3.Text = "mm";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(150, 93);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 15);
            this.label4.TabIndex = 9;
            this.label4.Text = "mm";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(356, 45);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(29, 15);
            this.label5.TabIndex = 10;
            this.label5.Text = "mm";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(356, 93);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(29, 15);
            this.label6.TabIndex = 11;
            this.label6.Text = "mm";
            // 
            // PdfOptions
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(423, 225);
            this.ControlBox = false;
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.button1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "PdfOptions";
            this.Text = "PDF Options";
            this.Load += new System.EventHandler(this.PdfOptions_Load);
            ((System.ComponentModel.ISupportInitialize)(this.MarginTop)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.MarginRight)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.MarginLeft)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.MarginBottom)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.NumericUpDown MarginTop;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label bottomLbl;
        private System.Windows.Forms.Label topLbl;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown MarginBottom;
        private System.Windows.Forms.NumericUpDown MarginRight;
        private System.Windows.Forms.NumericUpDown MarginLeft;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
    }
}