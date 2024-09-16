using ProgressODoom;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Data;
using System.Windows.Forms;
using System.IO;
using System.Threading;
using CefSharp.DevTools.Input;
using System.Runtime.InteropServices;

namespace NFSystemAcceptance
{
    public partial class SelectKeyDialog : Form
    {
        #region WinAPI Form Dragging
        /// <summary>
        /// Move the form by Dragging.
        /// </summary>
        /// https://www.codeproject.com/Articles/709301/How-to-Move-a-Windows-Form-By-Dragging
        public const int WM_NCLBUTTONDOWN = 0xA1;
        public const int HT_CAPTION = 0x2;
        [DllImport("user32.dll")]
        public static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);
        [DllImport("user32.dll")]
        public static extern bool ReleaseCapture();
        #endregion

        public event EventHandler<Dictionary<string, DirectoryInfo>> StartInfo;
        public event EventHandler<string> RootPathInfo;

        bool splash = true;
        public string SelectedKey = string.Empty;
        List<string> dataList = new List<string>();
        public Dictionary<string, DirectoryInfo> tabInfo = new Dictionary<string, DirectoryInfo>();
        public DirectoryInfo rootDir;
        BackgroundWorker bgWorker = new BackgroundWorker();

        List<Panel> list = new List<Panel>();

       
        private void PrepareApp()
        {
            de.nanofocus.NFEval.NFEvalCSHelpers.NFEvalInit();

            try
            {
                string repositoryPath = "C:\\ProgramData\\NanoFocus\\SystemAcceptance\\";

                IEnumerable<string> dirList = null;
                if (Directory.Exists(repositoryPath)) dirList = Directory.EnumerateDirectories(repositoryPath);

                if (Directory.Exists(repositoryPath) == false || dirList.Count() == 0)
                {
                    throw new Exception("No Templates in folder " + repositoryPath);
                }

                DirectoryInfo dir = new DirectoryInfo(repositoryPath);

                DirectoryInfo[] sub = dir.GetDirectories();

                foreach (var item in sub)
                {
                    if (!item.Name.StartsWith("."))
                    {
                        dataList.Add(item.Name);
                    }
                }
                string system = "CM";
                rootDir = new DirectoryInfo(repositoryPath + system);
                if (true == Directory.Exists(repositoryPath + system))
                {
                    DirectoryInfo[] subDirs = rootDir.GetDirectories();

                    foreach (DirectoryInfo dirInfo in subDirs)
                    {
                        var files = dirInfo.GetFiles("*.md");

                        if (files.Length != 0)
                        {
                            tabInfo.Add(dirInfo.Name, dirInfo);

                        }
                    }
                }
                else
                {
                    throw new Exception((repositoryPath + system).ToString() + " does not exist");
                }
                if (tabInfo.Count == 0)
                {
                    throw new Exception("No Templates available");

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void OnStartEvent(Dictionary<string, DirectoryInfo> dict)
        {
            StartInfo?.Invoke(this, dict);
        }
        private void OnRootpathEvent(string rootpath)
        {
            RootPathInfo?.Invoke(this, rootpath);
        }
        public SelectKeyDialog()
        {
            SelectedKey = "";
            InitializeComponent();

            progressBarEx2.Hide();
            TopLevel = true;

            foreach (Button btn in Controls.OfType<Button>())
            {
                if (btn != null && btn.Name != "btnOk")
                {
                    btn.MouseEnter += Btn_MouseEnter;
                    btn.Click += Btn_Click;
                }
            }
            foreach (Panel panel in Controls.OfType<Panel>())
            {
                list.Add(panel);
            }
            Text = "Select " + "System Type";
        }

        private void Btn_MouseEnter(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Name;
            if (btnName == "btnOk")
            {
                return;
            }
            string btnTag = (sender as Button).Tag.ToString();
        }

        private void Pn_MouseEnter(object sender, EventArgs e)
        {
            string panelName = (sender as Panel).Name;
        }

        private void SelectKeyDialog_Load(object sender, EventArgs e)
        {
            this.CenterToParent();
            bgWorker.DoWork += new DoWorkEventHandler(BgWorker_DoWork);
            bgWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(BgWorker_RunWorkerCompleted);
            StartProgress();
            bgWorker.RunWorkerAsync();
            bgWorker.WorkerReportsProgress = true;
        }

        private void BgWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            StopProgress();
        }

        private void BgWorker_DoWork(object sender, DoWorkEventArgs e)
        {
            PrepareApp();
        }

        private void StartProgress()
        {
            foreach (Control ctrl in Controls)
            {
                if (ctrl != Controls.OfType<ProgressBarEx>())
                {
                    ctrl.Enabled = false;
                }
            }
            toolStripStatusLabel1.Text = "Please wait..";
            progressBarEx2.Show();
            progressBarEx2.MarqueeStart();
        }

        private void StopProgress()
        {
            progressBarEx2.MarqueeStop();
            progressBarEx2.Hide();
            foreach (Control ctrl in Controls)
            {
                if (ctrl != Controls.OfType<ProgressBarEx>())
                {
                    ctrl.Enabled = true;
                }
            }
            toolStripStatusLabel1.Text = "System Type:  ";
        }

        private void Btn_Click(object sender, EventArgs e)
        {
            string btnName = (sender as Button).Name;
            string btnTag = (sender as Button).Tag.ToString();
            if (btnName != "btnOk")
            {
                foreach (var item in list)
                {
                    item.BackColor = Color.Transparent;
                }
                toolStripStatusLabel1.BackColor = Color.Transparent;
                toolStripStatusLabel1.Text = "System Type:  " + (sender as Button).Tag.ToString();
                SelectedKey = btnTag;
                switch (btnName)
                {
                    case "button1":
                        //toolStripStatusLabel1.Text = "  µSurf - CM";
                        label1.Text = btnTag;
                        panel1.BackColor = Color.LightSeaGreen;
                        break;
                    case "button2":
                        //toolStripStatusLabel1.Text = "  µScan - CP";
                        label2.Text = btnTag;
                        panel2.BackColor = Color.LightSeaGreen;
                        break;
                    case "button3":
                        //toolStripStatusLabel1.Text = "  µScan - CL";
                        label3.Text = btnTag;
                        panel3.BackColor = Color.LightSeaGreen;
                        break;
                    case "button4":
                        //toolStripStatusLabel1.Text = "  µSprint - CX";
                        label4.Text = btnTag;
                        panel4.BackColor = Color.LightSeaGreen;
                        break;
                    case "button5":
                        //toolStripStatusLabel1.Text = "  WI"; 
                        label5.Text = btnTag;
                        panel5.BackColor = Color.LightSeaGreen;
                        break;
                    default:
                        toolStripStatusLabel1.Text = "";
                        break;
                }
            }

        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            if (SelectedKey == string.Empty)
            {
                toolStripStatusLabel1.BackColor = Color.Yellow;
                toolStripStatusLabel1.Text = "Please select System Type !";
                return;
            }
            else
            {
                OnStartEvent(tabInfo);
                OnRootpathEvent(rootDir.FullName);

                Close();
            }
        }

        #region Drag Form on MouseDown
        private void panel6_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                SendMessage(Handle, WM_NCLBUTTONDOWN, HT_CAPTION, 0);
            }
        }

        private void panel7_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                SendMessage(Handle, WM_NCLBUTTONDOWN, HT_CAPTION, 0);
            }
        }

        private void Title_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                SendMessage(Handle, WM_NCLBUTTONDOWN, HT_CAPTION, 0);
            }
        }
        #endregion

    }

}
