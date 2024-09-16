using System;
using System.Windows.Forms;

namespace NFSystemAcceptance
{


    public partial class tabPanel : UserControl
    {
        public delegate void OnLoadEvent(object sender, EventArgs e);
        public event OnLoadEvent OnGenerate;

        public delegate void OnHelpEvent(object sender, EventArgs e);
        public event OnHelpEvent OnHelp;

        public tabPanel(string name)
        {
            InitializeComponent();
            this.Dock = DockStyle.Fill;
            this.Name = name;
            btnGeneratePage.Click += (sender, args) =>
            {
                if(null!= OnGenerate) OnGenerate(sender, args);
            };
            btnHelp.Click += (sender, args) =>
            {
                if (null != OnGenerate) OnHelp(sender, args);
            };
        }

        public void  setBrowserEngine(Control browserControl)
        {
            browserPanel.Controls.Add(browserControl);
        }

       
    }
}
