using ProgressODoom;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.ComponentModel;
using System.Windows.Forms;
using System.IO;
using System.Runtime.InteropServices;
using SystemAcceptance.Properties;

namespace SystemAcceptance
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
        public event EventHandler<string> SelectedSystem;

        bool splash = true;
        public string SelectedKey = string.Empty;
        List<string> dataList = new List<string>();
        public Dictionary<string, DirectoryInfo> tabInfo = new Dictionary<string, DirectoryInfo>();
        public DirectoryInfo rootDir;
        private string RepositoryPath;
        BackgroundWorker bgWorker = new BackgroundWorker();

        List<Panel> PanelList = new List<Panel>();
        List<Label> LabelList = new List<Label>();

        private void PrepareApp()
        {
            de.nanofocus.NFEval.NFEvalCSHelpers.NFEvalInit();
            try
            {
                RepositoryPath = "C:\\ProgramData\\NanoFocus\\SystemAcceptance\\";
                string optionsFile = RepositoryPath + "PdfOptions.json";
                if (!File.Exists(optionsFile))
                {
                    File.Create(optionsFile);
                    Settings.Default.OptionsPath = optionsFile;
                    Settings.Default.Save();
                    Settings.Default.Upgrade();
                }

                IEnumerable<string> dirList = null;
                if (Directory.Exists(RepositoryPath)) dirList = Directory.EnumerateDirectories(RepositoryPath);

                if (Directory.Exists(RepositoryPath) == false || dirList.Count() == 0)
                {
                    throw new Exception("No Templates in folder " + RepositoryPath);
                }

                DirectoryInfo dir = new DirectoryInfo(RepositoryPath);

                DirectoryInfo[] sub = dir.GetDirectories();

                foreach (var item in sub)
                {
                    if (!item.Name.StartsWith("."))
                    {
                        dataList.Add(item.Name);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void SetSystem(string sys)
        {
            //string system = "CM";
            if (rootDir != null)
            {
                rootDir = null;
            }
            tabInfo.Clear();
            rootDir = new DirectoryInfo(RepositoryPath + sys);
            if (true == Directory.Exists(RepositoryPath + sys))
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
                throw new Exception((RepositoryPath + sys).ToString() + " does not exist");
            }
            if (tabInfo.Count == 0)
            {
                throw new Exception("No Templates available");
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
        private void OnSelectedSystem(string system)
        {
            SelectedSystem?.Invoke(this, system);
        }
        public SelectKeyDialog()
        {
            SelectedKey = "";
            InitializeComponent();

            progressBarEx2.Hide();
            TopLevel = true;

            foreach (Button btn in mainPanel.Controls.OfType<Button>())
            {
                if (btn != null && btn.Name != "btnOk" && btn.Name != "exitButton")
                {
                    btn.MouseEnter += Btn_MouseEnter;
                    btn.Click += Btn_Click;
                }
            }
            foreach (Panel panel in mainPanel.Controls.OfType<Panel>())
            {
                if (panel != null && panel.Name != "titlebarPanel")
                {
                    PanelList.Add(panel);
                }
                foreach (Label lbl in panel.Controls.OfType<Label>())
                {
                    if (lbl != null)
                    {
                        LabelList.Add(lbl);
                    }
                }
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
            CenterToParent();
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

                SetSystem(btnTag);
                foreach (var item in PanelList)
                {
                    item.BackColor = Color.Transparent;
                }
                foreach (Label lbl in LabelList)
                {
                    lbl.ForeColor = SystemColors.ControlText;
                }
                toolStripStatusLabel1.BackColor = Color.Transparent;
                toolStripStatusLabel1.Text = "System Type:  " + (sender as Button).Tag.ToString();
                SelectedKey = btnTag;
                switch (btnName)
                {
                    case "button1":
                        //toolStripStatusLabel1.Text = "  µSurf - CM";
                        //SetSystem(btnTag);
                        label1.Text = btnTag;
                        label1.ForeColor = Color.White;
                        panel1.BackColor = Color.SlateGray;
                        break;
                    case "button2":
                        //toolStripStatusLabel1.Text = "  µScan - CP";
                        //SetSystem(btnTag);
                        label2.Text = btnTag;
                        label2.ForeColor = Color.White;
                        panel2.BackColor = Color.SlateGray;
                        break;
                    case "button3":
                        //toolStripStatusLabel1.Text = "  µScan - CL";
                        //SetSystem(btnTag);
                        label3.Text = btnTag;
                        label3.ForeColor = Color.White;
                        panel3.BackColor = Color.SlateGray;
                        break;
                    case "button4":
                        //toolStripStatusLabel1.Text = "  µSprint - CX";
                        //SetSystem(btnTag);
                        label4.Text = btnTag;
                        label4.ForeColor = Color.White;
                        panel4.BackColor = Color.SlateGray;
                        break;
                    case "button5":
                        //toolStripStatusLabel1.Text = "  WI"; 
                        //SetSystem(btnTag);
                        label5.Text = btnTag;
                        label5.ForeColor = Color.White;
                        panel5.BackColor = Color.SlateGray;
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
                OnSelectedSystem(SelectedKey);
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

        private void SelectKeyDialog_Shown(object sender, EventArgs e)
        {
            Focus();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            if (!IsDisposed)
            {
                Application.Exit();
            }
        }

        private void exitButton_MouseEnter(object sender, EventArgs e)
        {
            exitButton.BackColor = Color.Red;
        }

        private void exitButton_MouseLeave(object sender, EventArgs e)
        {
            exitButton.BackColor = SystemColors.MenuHighlight;
        }
    }

}
