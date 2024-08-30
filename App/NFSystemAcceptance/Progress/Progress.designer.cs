namespace Progress
{
    partial class ProgressBar
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
            this.progressBarEx1 = new ProgressODoom.ProgressBarEx();
            this.plainBackgroundPainter1 = new ProgressODoom.PlainBackgroundPainter();
            this.plainBorderPainter1 = new ProgressODoom.PlainBorderPainter();
            this.plainProgressPainter1 = new ProgressODoom.PlainProgressPainter();
            this.SuspendLayout();
            // 
            // progressBarEx1
            // 
            this.progressBarEx1.BackgroundPainter = this.plainBackgroundPainter1;
            this.progressBarEx1.BorderPainter = this.plainBorderPainter1;
            this.progressBarEx1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.progressBarEx1.Location = new System.Drawing.Point(0, 0);
            this.progressBarEx1.MarqueePercentage = 15;
            this.progressBarEx1.MarqueeSpeed = 50;
            this.progressBarEx1.MarqueeStep = 5;
            this.progressBarEx1.Maximum = 100;
            this.progressBarEx1.Minimum = 0;
            this.progressBarEx1.Name = "progressBarEx1";
            this.progressBarEx1.ProgressPadding = 0;
            this.progressBarEx1.ProgressPainter = this.plainProgressPainter1;
            this.progressBarEx1.ProgressType = ProgressODoom.ProgressType.MarqueeWrap;
            this.progressBarEx1.ShowPercentage = true;
            this.progressBarEx1.Size = new System.Drawing.Size(290, 23);
            this.progressBarEx1.TabIndex = 1;
            this.progressBarEx1.Text = "50%";
            this.progressBarEx1.Value = 50;
            // 
            // plainBackgroundPainter1
            // 
            this.plainBackgroundPainter1.Color = System.Drawing.Color.FromArgb(((int)(((byte)(240)))), ((int)(((byte)(240)))), ((int)(((byte)(240)))));
            this.plainBackgroundPainter1.GlossPainter = null;
            // 
            // plainBorderPainter1
            // 
            this.plainBorderPainter1.Color = System.Drawing.Color.DarkGray;
            this.plainBorderPainter1.RoundedCorners = false;
            this.plainBorderPainter1.Style = ProgressODoom.PlainBorderPainter.PlainBorderStyle.Flat;
            // 
            // plainProgressPainter1
            // 
            this.plainProgressPainter1.Color = System.Drawing.Color.DeepSkyBlue;
            this.plainProgressPainter1.GlossPainter = null;
            this.plainProgressPainter1.LeadingEdge = System.Drawing.Color.Transparent;
            this.plainProgressPainter1.ProgressBorderPainter = null;
            // 
            // ProgressBar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(290, 23);
            this.ControlBox = false;
            this.Controls.Add(this.progressBarEx1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "ProgressBar";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.TopMost = true;
            this.ResumeLayout(false);

        }

        #endregion
        private ProgressODoom.ProgressBarEx progressBarEx1;
        private ProgressODoom.PlainProgressPainter plainProgressPainter1;
        private ProgressODoom.PlainBorderPainter plainBorderPainter1;
        private ProgressODoom.PlainBackgroundPainter plainBackgroundPainter1;
    }
}