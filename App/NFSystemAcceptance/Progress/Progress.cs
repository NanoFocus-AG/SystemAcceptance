using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace Progress
{
    public partial class ProgressBar : Form
    {
        public ProgressBar()
        {
            InitializeComponent();
            
            progressBarEx1.MarqueeSpeed = 34;
           
            Start();
        }
        public void Start()
        {
            this.UIThread(delegate
            {
             
                progressBarEx1.MarqueeStart();
                this.Show();
            });
        }

        public void Stop()
        {
            this.UIThread(delegate
            {
                progressBarEx1.MarqueeSpeed = 0;
                progressBarEx1.MarqueeStop();
                this.Hide();
                this.Close();
            });
        }
       
 
    }

    static class FormExtensions
    {
        static public void UIThread(this Form form, MethodInvoker code)
        {
            if (form.InvokeRequired)
            {
                form.Invoke(code);
                return;
            }
            code.Invoke();
        }
    }
}
