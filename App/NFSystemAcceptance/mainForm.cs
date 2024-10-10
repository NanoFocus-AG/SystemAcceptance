using CefSharp;
using CefSharp.WinForms;
using de.nanofocus.NFEval;
using PdfSharp.Drawing;
using PdfSharp.Pdf;
using PdfSharp.Pdf.IO;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;
using NFOpenFileDialog;
using ProgressMatrixLibrary;
using System.Drawing;
using System.Linq;
using Button = System.Windows.Forms.Button;
using Newtonsoft.Json;
using SystemAcceptance.Properties;

namespace SystemAcceptance
{

    public partial class mainForm : Form
    {
        private ProgressMatrixControl progressMatrixControl;

        SelectKeyDialog skDialog = new SelectKeyDialog();
        MqttStatusListener StatusListener = new MqttStatusListener();
        PDFCallback printCallback = new PDFCallback();

       
        TabPage tabPage;

        private string rootPath;
        private string project;
        private ChromiumWebBrowser mBrowserEngine;
        private DirectoryInfo WorkloadPath;

        private Dictionary<string, tabPanel> panelsDict = new Dictionary<string, tabPanel>();
        private Dictionary<string, DirectoryInfo> tabDirInfoDict = new Dictionary<string, DirectoryInfo>();

        private NFTopographyPointer topo;
        private NFEvaluationPointer eval;
        private NFEvaluationFactoryPointer factory = NFEvaluationFactory.New();
        private NFEvalDox evalDox;
        private string systemNumber = "";
        private SpecificationForm specsDlg;
        private List<string> pdfDocs = new List<string>();
        private int ProgressLocX;
        private int ProgressLocY;
        private string language;

        private CXBoundObject cxBound;
        PdfOptions PdfOptions;
        private double MarginTop { get; set; }
        private double MarginBottom { get; set; }
        private double MarginLeft { get; set; }
        private double MarginRight { get; set; }

        string parseTemplateFile(string filename, string defaultAlgoName)
        {
            string algoName = defaultAlgoName;
            try
            {
                string fileContents = File.ReadAllText(filename);
                Regex rx = new Regex(@"<!--.*EvalAlgoName=(\w*).*>", RegexOptions.Compiled);
                MatchCollection matches = rx.Matches(fileContents);
                if (matches.Count > 0)
                {
                    algoName = matches[0].Groups[1].Value;
                }
            }
            catch (Exception)
            {
            };

            return algoName;
        }

        public void InitalizeBrowserEngine()
        {

            WorkloadPath = new DirectoryInfo("c:\\Program Data\\");

            CefSettings settings = new CefSettings();

            // Initialize cef with the provided settings
            Cef.Initialize(settings);
            //CefSharp.Cef.EnableHighDPISupport(); // Not needed as this is enabled by deault in Chromium.

            mBrowserEngine = new ChromiumWebBrowser("");
            
            BrowserEngineMenuHandler menu = new BrowserEngineMenuHandler();
            mBrowserEngine.MenuHandler = menu;

            menu.OnReloadPageEvent += () =>
              {
                  if (evalDox != null) evalDox.evaluate();
              };

            mBrowserEngine.Dock = DockStyle.Fill;
            mBrowserEngine.AutoSize = true;
            mBrowserEngine.JavascriptObjectRepository.Settings.LegacyBindingEnabled = true;

            cxBound = new CXBoundObject();
            cxBound.State = false;
            mBrowserEngine.JavascriptObjectRepository.Register("cxBound", cxBound, false, null);
        }

        private void InitProgressMatrix()
        {
            progressMatrixControl = new ProgressMatrixControl();
            progressMatrixControl.Size = new Size(100, 100);
            progressMatrixControl.BackColor = Color.Black;

            ProgressLocX = (Width - progressMatrixControl.Width) / 2;
            ProgressLocY = (Height - progressMatrixControl.Height) / 2;
            progressMatrixControl.Location = new Point(ProgressLocX, ProgressLocY);

            progressMatrixControl.Style = ProgressMatrixControl.ProgressStyle.Classic;
            progressMatrixControl.BackColor = Color.Black;
            mBrowserEngine.Controls.Add(progressMatrixControl);
            progressMatrixControl.Hide();
        }

        public mainForm()
        {
            InitializeComponent();
            skDialog.StartInfo += SkDialog_StartInfo;
            skDialog.RootPathInfo += SkDialog_RootPathInfo;
            skDialog.SelectedSystem += SkDialog_SelectedSystem;

            topo = NFTopography.New();
            InitializeDox();
            InitalizeBrowserEngine();
            InitProgressMatrix();
            toolStripStatusLabel1.Text = "";
            toolStripStatusLabel2.Text = "";
        }

        private void SkDialog_SelectedSystem(object sender, string e)
        {
            Text = "SystemAcceptance" + " : " + skDialog.SelectedKey;
        }

        private void SkDialog_RootPathInfo(object sender, string e)
        {
            rootPath = e.ToString();
            language = Settings.Default.Language;
        }

        private void SkDialog_StartInfo(object sender, Dictionary<string, DirectoryInfo> tabInfo)
        {
            string panelName = tabPage1.Name + ".p1";
            panelsDict.Add(panelName, new tabPanel(panelName));
            tabControl.TabPages[tabPage1.Name].Controls.Add(panelsDict[panelName]);
            panelsDict[panelName].setBrowserEngine(mBrowserEngine);
            tabControl.TabPages.Remove(tabPage1);
            CreateTabStructure(tabInfo);

            Text += " " + rootPath;

            //rootPath = rootPath;

            StatusListener.OnNewFileEvent += (string fname) =>
            {
                this.UIThread(delegate
                {
                    if (File.Exists(fname))
                    {
                        ExecutePipeline(fname);
                    }
                });
            };
            Activate();
        }

        private void CreateTabStructure(Dictionary<string, DirectoryInfo> tabInfo)
        {
            tabDirInfoDict = tabInfo;
            foreach (var element in tabDirInfoDict)
            {
                string tabPageName = element.Key;
                var p = new TabPage(tabPageName);
                p.Name = tabPageName;
                p.Text = tabPageName;
                tabControl.TabPages.Add(p);
                string panelName = tabPageName + ".p1";
                panelsDict.Add(panelName, new tabPanel(panelName));
                tabControl.TabPages[tabPageName].Controls.Add(panelsDict[panelName]);
            }

            TabPage tp = tabControl.SelectedTab;
            tabPage = tabControl.SelectedTab;

            if (tp.Text == "Certificate" || tp.Text == "Summary")
            {
                BeginInvoke(new Action(() => { HideButtons(tp); }));
            }
            else
            {
                BeginInvoke(new Action(() => { ShowButtons(tp); }));
            }

            tabControl.Selected += (sender, args) =>
            {
                tabPage = tabControl.SelectedTab;
                Console.WriteLine(tabPage.Text);
                project = tabControl.SelectedTab.Name;

                if (tabPage.Text == "Certificate" || tabPage.Text == "Summary")
                {
                    BeginInvoke(new Action(() => { HideButtons(tabPage); }));
                }
                else
                {
                    BeginInvoke(new Action(() => { ShowButtons(tabPage); }));
                }

                try
                {
                    toolStripStatusLabel1.Text = "";
                    toolStripStatusLabel2.Text = "";
                    string Name = tabControl.SelectedTab.Name + ".p1";
                    panelsDict[Name].setBrowserEngine(mBrowserEngine);
                    string projectPath = tabDirInfoDict[project].FullName + "\\";
                    string fullURL = tabDirInfoDict[tabControl.SelectedTab.Name].FullName + "\\" + tabControl.SelectedTab.Name + ".html";

                    if (File.Exists(fullURL))
                    {
                        Uri url = new Uri("file://" + fullURL);

                        //mBrowserEngine.Load(url.AbsolutePath);
                        mBrowserEngine.Load(url.AbsolutePath);
                        while (mBrowserEngine.IsLoading)
                        {
                            Thread.Sleep(10);
                        }
                        Thread.Sleep(100);

                        

                        //Task.Run(() => PrintPdf(projectPath, project));
                        BeginInvoke(new Action(() =>
                        {
                            DisableButtonsOnProgress(tabPage);
                            toolStripStatusLabel1.Text = "Printing pdf..";
                            progressMatrixControl.Show();
                            progressMatrixControl.ProgressAnimation();
                        }));
                        PrintPdf(projectPath, project);
                    }
                    else
                    {
                        mBrowserEngine.LoadHtml("<html>\r\n<head>\r\n<style>\r\nh1 {text-align: center;}\r\n</style>\r\n</head>\r\n<body>\r\n<h1>...</h1>\r\n</body>\r\n</html>");
                        //mBrowserEngine.LoadHtml("<html><head></head><body></body></html>");
                    }

                    panelsDict[Name].OnGenerate -= OnExecutePipeline;
                    panelsDict[Name].OnGenerate += OnExecutePipeline;
                    panelsDict[Name].OnHelp -= OnHelp;
                    panelsDict[Name].OnHelp += OnHelp;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            };

            SelectFirstTabPage();
        }

        #region Show/Hide Buttons
        private void HideButtons(TabPage tabPage)
        {
            TabPage tp = tabPage;
            Control.ControlCollection c = tp.Controls;
            foreach (Control ctrl in c)
            {
                if (ctrl is UserControl)
                {
                    foreach (Panel pn in ctrl.Controls)
                    {
                        foreach (Control ct in pn.Controls)
                        {
                            foreach (Button btn in ct.Controls.OfType<Button>())
                            {
                                btn.Visible = false;
                            }
                        }
                    }
                }
            }
        }

        private void ShowButtons(TabPage tabPage)
        {
            TabPage tp = tabPage;
            Control.ControlCollection c = tp.Controls;
            foreach (Control ctrl in c)
            {
                if (ctrl is UserControl)
                {
                    foreach (Panel pn in ctrl.Controls)
                    {
                        foreach (Control ct in pn.Controls)
                        {
                            foreach (Button btn in ct.Controls.OfType<Button>())
                            {
                                btn.Visible = true;
                            }
                        }
                    }
                }
            }
        }

        private void DisableButtonsOnProgress(TabPage tabPage)
        {
            TabPage tp = tabPage;
            Control.ControlCollection c = tp.Controls;
            foreach (Control ctrl in c)
            {
                if (ctrl is UserControl)
                {
                    foreach (Panel pn in ctrl.Controls)
                    {
                        foreach (Control ct in pn.Controls)
                        {
                            foreach (Button btn in ct.Controls.OfType<Button>())
                            {
                                btn.Enabled = false;
                            }
                        }
                    }
                }
            }
        }

        private void EnableButtonOnProgress(TabPage tabPage)
        {
            TabPage tp = tabPage;
            Control.ControlCollection c = tp.Controls;
            foreach (Control ctrl in c)
            {
                if (ctrl is UserControl)
                {
                    foreach (Panel pn in ctrl.Controls)
                    {
                        foreach (Control ct in pn.Controls)
                        {
                            foreach (Button btn in ct.Controls.OfType<Button>())
                            {
                                btn.Enabled = true;
                            }
                        }
                    }
                }
            }
        }
        #endregion

        private void SelectFirstTabPage()
        {
            try
            {
                var tp = tabControl.TabPages[0];
                tabControl.SelectedTab = tp;

                string name = tabControl.SelectedTab.Name + ".p1";
                panelsDict[name].setBrowserEngine(mBrowserEngine);
                mBrowserEngine.Refresh();

                if (File.Exists(tabDirInfoDict[tabControl.SelectedTab.Name].FullName + "\\" + tabControl.SelectedTab.Name + ".html"))
                {
                    Uri Url = new Uri("file://" + tabDirInfoDict[tabControl.SelectedTab.Name].FullName + "\\" + tabControl.SelectedTab.Name + ".html");

                    mBrowserEngine.Load(Url.AbsolutePath);
                }
                else
                {
                    mBrowserEngine.LoadHtml("<html><head></head><body></body></html>");
                }

                panelsDict[name].OnGenerate -= OnExecutePipeline;
                panelsDict[name].OnGenerate += OnExecutePipeline;

                panelsDict[name].OnHelp -= OnHelp;
                panelsDict[name].OnHelp += OnHelp;
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
            
        }

        private void InitializeDox()
        {
            evalDox = new NFEvalDox();
            evalDox.setParameter("CompactOutput", new NFVariant(false));
            evalDox.setParameter("AsyncOutput", new NFVariant(false));
            evalDox.setParameter("ColorPalette", new NFVariant("NFTopoToColor<NFColorFunctors::NFTopoHeightPixelToHSVRainbowFunctor>"));
            evalDox.setParameter("ColorPaletteBar", new NFVariant("NFTopoToColor<NFColorFunctors::NFTopoHeightPixelToHSVRainbowFunctor>"));
        }

        private void OnHelp(object sender, EventArgs arg)
        {
            project = tabControl.SelectedTab.Name;
            string projectPath = tabDirInfoDict[project].FullName + @"\\";

            NFTopographyPointer t = NFTopography.New();
            t.create(512, 512);
            topo = t;

            evalDox.setNumberOfInputTopos(1);

            evalDox.setInputTopo(topo, 0);

            evalDox.setParameter("Input", new NFVariant(projectPath + "help" + ".md"));

            evalDox.setParameter("StyleSheet", new NFVariant(projectPath + "help" + ".css"));

            evalDox.setParameter("Output", new NFVariant(projectPath + "help" + ".html"));

            int rc = evalDox.evaluate();
            if (rc != 0)
            {
                MessageBox.Show("Error on help creation");
                toolStripStatusLabel1.Text = "Error on help creation";
            }


            if (File.Exists(projectPath + "help" + ".html") && File.Exists(projectPath + "help" + ".md"))
            {
                Uri url = new Uri("file://" + projectPath + "help.html");

                mBrowserEngine.Load(url.AbsolutePath);

                toolStripStatusLabel1.Text = ".";

                Application.DoEvents();
            }
            else
            {
                MessageBox.Show("Help not available");
            }
        }

        private void OnExecutePipeline(object sender, EventArgs arg)
        {
            ExecutePipeline();
        }

        
       
        private void ExecutePipeline(string fileName = "")
        {
            NFEvaluationPointer topoStatistic = new NFEvaluationPointer(factory.getObjectByName("NFTopoStatistic").get());
            NFParameterSetPointer statisticParameter = NFParameterSet.New();
            NFParameterSetPointer inputParameter = NFParameterSet.New();
            NFParameterSetReaderPointer preader = NFParameterSetReader.New();
            NFParameterSetWriterPointer pwriter = NFParameterSetWriter.New();

            string[] fileNames;

            toolStripStatusLabel1.Text = " ";
            Application.DoEvents();

            project = tabControl.SelectedTab.Name;
            string projectPath = tabDirInfoDict[project].FullName + "\\";

            /*
             * Load all plugins  inside the current folder. either ned or dll  
             * 
             */

            // Check if Language exists
            
            string mdFile = FileHelper.SearchForLanguages(projectPath, language, project + ".md");


            var algos = tabDirInfoDict[project].GetFiles("*.ned");
            if (algos.Length > 0)
            {
                NFEval_I_CS810x64.NFLoadPlugins(tabDirInfoDict[project].FullName);
            }

            if (fileName == "")
            {
                NFFileDialogBox dlg = new NFFileDialogBox();
                var result = dlg.ShowDialog();
                if (result != DialogResult.OK)
                {
                    return;
                }
                fileNames = dlg.Filenames;
                fileName = dlg.FileName;
                if (dlg.Filenames == null)
                {
                    fileNames = new string[1];
                    fileNames[0] = fileName;
                }
            }
            else
            {
                fileNames = new string[1];
                fileNames[0] = fileName;
            }

            //-----------------------------------------------------------------------------------------------------------------

            specsDlg = new SpecificationForm(rootPath, project);
            specsDlg.ShowDialog();


            //string algoName = parseTemplateFile(projectPath + project + ".md", project); // <=== Check for Language here ?
            string algoName = parseTemplateFile(mdFile, project); // <=== Check for Language here ?
            eval = new NFEvaluationPointer(factory.getObjectByName(algoName).get());

            if (eval.get() == null)
            {
                throw new IOException("not");
            }

            preader.setSource(projectPath + algoName + ".npsx");
            bool suc = preader.read();
            if (suc == true)
            {
                inputParameter = preader.getParameterSet();
                eval.setParameterSet(inputParameter);
            }
            NFVariant v = new NFVariant();
            v.setString(projectPath);
            eval.setParameter("WorkingDirectory", v);
            eval.setParameter("WorkingDir", v);
            eval.setParameter("Working Dir", v);
            eval.setParameter("Working Directory", v);
            int topoIndex = 0;

            //Progress.ProgressBar progressBar = new Progress.ProgressBar();

            BeginInvoke(new Action(() =>
            {
                progressMatrixControl.Show();
                progressMatrixControl.ProgressAnimation();
            }));
            /// Start:  do computation 
            Task task = Task.Run(() =>
            {
                foreach (var file in fileNames)
                {
                    var actualFilename = file;

                    //toolStripStatusLabel1.Text += actualFilename + " | ";
                    BeginInvoke(new Action(() =>
                    {

                        toolStripStatusLabel2.Text = actualFilename;
                    }));
                    Application.DoEvents();

                    NFFileReaderPointer reader = NFFileReader.New();
                    reader.setFileName(actualFilename);
                    int rc = reader.evaluate();
                    if (rc != 0)
                    {
                        MessageBox.Show("Couldn't read the file!");
                    }
                    topo = reader.getOutputTopo();
                    if (topo.getMetaData().containsParameter("Serial"))
                    {
                        systemNumber = topo.getMetaData().getParameter("Serial").getString();
                    }
                    else
                    {
                        systemNumber = "000";
                    }

                    if (eval.getNumberOfInputTopos() == 1)
                    {
                        eval.setInputTopo(topo, 0);
                    }
                    else
                    {
                        eval.setInputTopo(topo, topoIndex);
                    }

                    topoStatistic.setInputTopo(topo);
                    if (topoStatistic.evaluate() == 0)
                    {
                        statisticParameter = topoStatistic.getOutputParameterSet();
                    }
                    if (topoIndex >= eval.getNumberOfInputTopos() - 1)
                    {
                        topoIndex = 0;
                        rc = eval.evaluate();

                        if (rc != 0)
                        {
                            MessageBox.Show("Error on evaluation. Wrong system selected !");
                            toolStripStatusLabel1.Text = "Error on evaluation. Wrong system selected!";
                        }
                        cxBound.State = true;

                        evalDox.setNumberOfInputTopos(1 + eval.getNumberOfOutputTopos());

                        evalDox.setInputTopo(topo, 0);

                        for (int i = 0; i < eval.getNumberOfOutputTopos(); ++i)
                        {
                            evalDox.setInputTopo(eval.getOutputTopo(i), i + 1);
                        }

                        int psetIndex = 0;
                        evalDox.setInputParameterSet(eval.getOutputParameterSet(), psetIndex);
                        psetIndex++;

                        if (specsDlg.standardParameter != null)
                        {
                            evalDox.setInputParameterSet(specsDlg.standardParameter, psetIndex);
                            psetIndex++;
                        }

                        if (specsDlg.sensorParameter != null)
                        {
                            evalDox.setInputParameterSet(specsDlg.sensorParameter, psetIndex);
                            psetIndex++;

                        }
                        if (specsDlg.testerParameter != null)
                        {
                            evalDox.setInputParameterSet(specsDlg.testerParameter, psetIndex);
                            psetIndex++;
                        }

                        if (specsDlg.stagesParameter != null)
                        {
                            evalDox.setInputParameterSet(specsDlg.stagesParameter, psetIndex);
                            psetIndex++;
                        }

                        statisticParameter.setParameter("Filename", new NFVariant(actualFilename));

                        evalDox.setInputParameterSet(statisticParameter, psetIndex);
                        psetIndex++;

                        //evalDox.setParameter("Input", new NFVariant(projectPath + project + ".md"));
                        evalDox.setParameter("Input", new NFVariant(mdFile));

                        evalDox.setParameter("StyleSheet", new NFVariant(projectPath + project + ".css"));

                        evalDox.setParameter("Output", new NFVariant(projectPath + project + ".html"));

                        rc = evalDox.evaluate();
                        if (rc != 0)
                        {
                            MessageBox.Show("Error on document creation");
                            toolStripStatusLabel1.Text = "Error on document creation ";
                        }

                        if (File.Exists(projectPath + project + ".html"))
                        {
                            Uri url = new Uri("file://" + projectPath + project + ".html");

                            mBrowserEngine.Load(url.AbsolutePath);
                        }
                        toolStripStatusLabel1.Text = ".";
                        Application.DoEvents();
                    }
                    toolStripStatusLabel1.Text = "Evaluating Done ";
                    topoIndex++;
                }

                pwriter.setParameterSet(eval.getParameterSet());
                pwriter.setDestination(projectPath + algoName + ".npsx");
                pwriter.write();

                Thread.Sleep(400);
                cxBound.State = false;

                Task t = Task.Run(() =>
                {
                    //_ = PrintPdf(projectPath, project);
                    PrintPdf(projectPath, project);
                    ExecuteSummary();
                    ExecuteCertificate();
                });

                //progressBar.Stop();
                BeginInvoke(new Action(() =>
                {
                    progressMatrixControl.StopProgress();
                    progressMatrixControl.Hide();
                }));
            });
        }

        //private async Task PrintPdf(string projectPath, string projectName)
        private void PrintPdf(string projectPath, string projectName)
        {

            string jsonFile = Properties.Settings.Default.OptionsPath;

            LoadPDFsettings(jsonFile);
            toolStripStatusLabel1.Text = "";
            toolStripStatusLabel2.Text = "";
            try
            {
                string filename = projectPath + projectName + ".pdf";

                //Process.Start(filename);

                if (File.Exists(filename) == true) File.Delete(filename);
                //// print to pdf
                PdfPrintSettings settings = new PdfPrintSettings();
                settings.MarginType = CefPdfPrintMarginType.Custom;
                settings.PrintBackground = true;

                //settings.MarginTop = 0.4;
                //settings.MarginRight = 1.0;
                //settings.MarginBottom = 0.4;
                //settings.MarginLeft = 1.0;

                settings.MarginTop = MarginTop;
                settings.MarginBottom = MarginBottom;
                settings.MarginLeft = MarginLeft;
                settings.MarginRight = MarginRight;

                pdfDocs.Remove(filename);
                pdfDocs.Add(filename);

                
                //mBrowserEngine.GetBrowser().GetHost().PrintToPdf(filename, settings, null);
                mBrowserEngine.GetBrowser().GetHost().PrintToPdf(filename, settings, printCallback);


                //await Task.Delay(100);
                BeginInvoke(new Action(() =>
                {
                    toolStripStatusLabel2.Text = filename;
                }));
            }
            catch (Exception)
            {
                toolStripStatusLabel1.Text = "  Printing  Failed";
            }
        }

        private void PrintCallback_PrintFinished(object sender, bool e)
        {

            BeginInvoke(new Action(() =>
            {
                toolStripStatusLabel1.Text = "Printing Done ";

                progressMatrixControl.StopProgress();
                progressMatrixControl.Hide();
                EnableButtonOnProgress(tabPage);

            }));
        }

        /// End


        private void ExecuteSummary()
        {
            string project = "Summary";

            if (false == tabDirInfoDict.ContainsKey(project)) return;

            string projectPath = tabDirInfoDict[project].FullName + "\\";
            // Check if Language exists
            //string language = Settings.Default.Language;
            string mdFile = FileHelper.SearchForLanguages(projectPath, language, project + ".md");

            evalDox.setNumberOfInputTopos(1);

            evalDox.setInputTopo(topo, 0);

            //evalDox.setParameter("Input", new NFVariant(projectPath + project + ".md"));
            evalDox.setParameter("Input", new NFVariant(mdFile));

            evalDox.setParameter("StyleSheet", new NFVariant(projectPath + project + ".css"));

            evalDox.setParameter("Output", new NFVariant(projectPath + project + ".html"));

            int rc = evalDox.evaluate();
            if (rc != 0)
            {
                MessageBox.Show("Error on document creation");
                toolStripStatusLabel1.Text = "Error on document creation";
                return;
            }
        }

        private void ExecuteCertificate()
        {
            string project = "Certificate";
            if (false == tabDirInfoDict.ContainsKey(project)) return;

            string projectPath = tabDirInfoDict[project].FullName + "\\";
            // Check if Language exists
            //string language = Settings.Default.Language;
            string mdFile = FileHelper.SearchForLanguages(projectPath, language, project + ".md");

            evalDox.setNumberOfInputTopos(1);

            evalDox.setInputTopo(topo, 0);

            //evalDox.setParameter("Input", new NFVariant(projectPath + project + ".md"));
            evalDox.setParameter("Input", new NFVariant(mdFile));

            evalDox.setParameter("StyleSheet", new NFVariant(projectPath + project + ".css"));

            evalDox.setParameter("Output", new NFVariant(projectPath + project + ".html"));

            int rc = evalDox.evaluate();
            if (rc != 0)
            {
                MessageBox.Show("Error on document creation");
                toolStripStatusLabel1.Text += "Error on document creation";
                return;
            }
        }

        private async Task PrintFiles(List<string> files, string systemNo = "")
        //private void PrintFiles(List<string> files, string systemNo = "")
        {
            BeginInvoke(new Action(() =>
            {
                DisableButtonsOnProgress(tabPage);
                toolStripStatusLabel1.Text = "Saving pdf files..";
                toolStripStatusLabel2.Text = "";
                progressMatrixControl.Show();
                progressMatrixControl.ProgressAnimation();
            }));

            int certificateIndex = files.FindIndex(x => x.Contains("Certificate"));
            if (certificateIndex != 0 && certificateIndex > 0)
            {
                var tmp = files[0];
                files[0] = files[certificateIndex];
                files[certificateIndex] = tmp;
            }
            int summaryIndex = files.FindIndex(x => x.Contains("Summary"));

            if (summaryIndex != 1 && summaryIndex > 0)
            {
                var tmp = files[1];
                files[1] = files[summaryIndex];
                files[summaryIndex] = tmp;
            }

            List<PdfDocument> pdfdocs = new List<PdfDocument>();

            foreach (var file in files)
            {
                if (File.Exists(file))
                {
                    pdfdocs.Add(PdfReader.Open(file, PdfDocumentOpenMode.Import));
                }
            }

            // Create the output document
            PdfDocument outputDocument = new PdfDocument
            {
                PageLayout = PdfPageLayout.SinglePage
            };

            foreach (PdfDocument doc in pdfdocs)
            {
                for (int idx = 0; idx < doc.PageCount; idx++)
                {
                    PdfPage page = doc.PageCount > idx ?
                      doc.Pages[idx] : new PdfPage();

                    // Add both pages to the output document
                    page = outputDocument.AddPage(page);
                }
            }
            // Add the page counter.
            // Make a font and a brush to draw the page counter.
            XFont font = new XFont("Arial", 9, XFontStyleEx.Regular);
            XBrush brush = XBrushes.Black;

            string noPages = outputDocument.Pages.Count.ToString();
            for (int i = 0; i < outputDocument.Pages.Count; ++i)
            {
                PdfPage page = outputDocument.Pages[i];
                // Make a layout rectangle.
                //XRect layoutRectangle = new XRect(0/*X*/, page.Height - 1.5 * font.Height/*Y*/, page.Width/*Width*/, font.Height/*Height*/);
                XRect layoutRectangle = new XRect(0, page.Height - 1.5 * font.Height, page.Width, font.Height);

                using (XGraphics gfx = XGraphics.FromPdfPage(page))
                {
                    gfx.DrawString(
                         (i + 1).ToString() + " / " + noPages,
                        font,
                        brush,
                        layoutRectangle,
                        XStringFormats.Center);
                }
            }
            try
            {
                // Save the document...
                string filename = rootPath + "\\SystemAcceptance_" + systemNo + ".pdf";
                //string filename = rootPath + systemNo + ".pdf";
                if (outputDocument.PageCount > 0)
                {
                    outputDocument.Save(filename);
                    Process.Start(filename);
                }

                await Task.Delay(1000);
                BeginInvoke(new Action(() =>
                {
                    toolStripStatusLabel1.Text = "File saved: ";
                    toolStripStatusLabel2.Text = filename;
                    progressMatrixControl.StopProgress();
                    progressMatrixControl.Hide();
                    EnableButtonOnProgress(tabPage);
                }));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + outputDocument.PageCount.ToString());
            }
        }

        private void printToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Task.Run(() => PrintFiles(pdfDocs, systemNumber));
            //PrintFiles(pdfDocs, systemNumber);
        }

        private void mainForm_Shown(object sender, EventArgs e)
        {
            skDialog.Show();
            PdfOptions = new PdfOptions();
            PdfOptions.OptionsChanged += PdfOptions_OptionsChanged;
            printCallback.PrintFinished += PrintCallback_PrintFinished;
        }

        private void LoadPDFsettings(string filename)
        {
            try
            {

            string file = File.ReadAllText(filename);
            if (new FileInfo(filename).Length == 0)
            {
                MarginTop = 0;
                MarginBottom = 0;
                MarginLeft = 1;
                MarginRight = 1;
            }
            else
            {
                Dictionary<string, double> MarginsDict = new Dictionary<string, double>();
                MarginsDict = JsonConvert.DeserializeObject<Dictionary<string, double>>(file);
                double toInches = 25.4;
                foreach (var item in MarginsDict)
                {
                    string key = item.Key;
                    double value = item.Value;
                    switch (key)
                    {
                        case "MarginTop":
                            MarginTop = value / toInches;
                            break;
                        case "MarginBottom":
                            MarginBottom = value / toInches;
                            break;
                        case "MarginLeft":
                            MarginLeft = value / toInches;
                            break;
                        case "MarginRight":
                            MarginRight = value / toInches;
                            break;
                        default:
                            break;
                    }
                }
            }
            }
            catch (Exception)
            {

                throw;
            }
        }
        private void PdfOptions_OptionsChanged(object sender, string e)
        {
            LoadPDFsettings(e.ToString());
        }

        private void mainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            Cef.Shutdown();
            StatusListener.Close();
            PdfOptions.OptionsChanged -= PdfOptions_OptionsChanged;
            printCallback.PrintFinished -= PrintCallback_PrintFinished;
            skDialog.StartInfo -= SkDialog_StartInfo;
            skDialog.RootPathInfo -= SkDialog_RootPathInfo;
            skDialog.SelectedSystem -= SkDialog_SelectedSystem;
            //NFEvalCSHelpers.NFEvalDestroy();
        }


        private void toolStripStatusLabel2_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(toolStripStatusLabel2.Text))
            {
                Process.Start(toolStripStatusLabel2.Text.Trim());
            }
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void mainForm_Resize(object sender, EventArgs e)
        {
            ProgressLocX = (Width - progressMatrixControl.Width) / 2;
            ProgressLocY = (Height - progressMatrixControl.Height) / 2;
            progressMatrixControl.Location = new Point(ProgressLocX, ProgressLocY);
        }


        private void pDFOptionsToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            PdfOptions pdfOptions = new PdfOptions();
            pdfOptions.ShowDialog();
        }
    }

    static class mainFormExtensions
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

    public class CXBoundObject
    {
        public bool State
        { get; set; }
        public void setHeightScaleFactor(string msg, ref double value, ref double tolerance)
        {
            const string msprintRoot = "c:\\msprint";

            if (State == false) return;

            if (new DirectoryInfo(msprintRoot).Exists == false)
            {
                Console.WriteLine(" no msprint fun");
                return;
            }

            mHeightScaleFactor = value;

            if (value < 1.0 - tolerance || value > 1.0 + tolerance)
            {
                var result = MessageBox.Show("Height scale factor \n" + mHeightScaleFactor.ToString("F5") + "\n is out of tolerance" + "\n should be used for msprint system ?", "Confirm - Out Of Tolerance - ", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation);

                if (result == DialogResult.No) return;
            }

            string hicosSprint = msprintRoot + "\\bin\\config\\NFHicosSensor.npsx";

            string setUpSisFolder = msprintRoot + "\\Config";

            double hs = mHeightScaleFactor;

            var sisList = new System.IO.DirectoryInfo(setUpSisFolder).GetFiles("*.sis");

            try
            {

                hs = updateSIS(sisList);

            }
            catch (Exception)
            {
            }
            try
            {
                FileInfo[] listNPSX = new FileInfo[2];
                listNPSX[0] = new FileInfo(hicosSprint);

                var p64 = Environment.GetEnvironmentVariable("NFEVAL_DIR_64");
                listNPSX[1] = new FileInfo(p64 + "\\config\\NFHicosSensor.npsx");

                hs = updateNPSX(listNPSX, hs);
            }
            catch (Exception)
            {
            }
        }

        private double updateNPSX(FileInfo[] fileList, double hs)
        {
            double newHeightScaleFactor = 1;

            List<double> factors = new List<double>();
            foreach (var file in fileList)
            {
                if (false == file.Exists) continue;

                NFParameterSetReaderPointer reader = NFParameterSetReader.New();

                reader.setSource(file.FullName);

                bool success = reader.read();

                if (true == success)
                {
                    var p = reader.getParameterSet();

                    double actualHeightScaleFactor = p.getParameter("Init/LinTab/HeightScaleFactor").getDouble();

                    factors.Add(actualHeightScaleFactor);
                }
            }



            foreach (var file in fileList)
            {
                if (false == file.Exists) continue;

                NFParameterSetReaderPointer reader = NFParameterSetReader.New();

                reader.setSource(file.FullName);

                bool success = reader.read();

                if (true == success)
                {
                    var p = reader.getParameterSet();

                    newHeightScaleFactor = hs;

                    p.setParameter("Init/LinTab/HeightScaleFactor", new NFVariant(newHeightScaleFactor));

                    NFParameterSetWriterPointer writer = NFParameterSetWriter.New();
                    writer.setDestination(file.FullName);
                    writer.setParameterSet(p);
                    success = writer.write();
                    if (false == success)
                    {
                        /// to do : message to user 
                        /// 
                    }
                }
                else
                {
                    newHeightScaleFactor = mHeightScaleFactor;
                }
            }

            return newHeightScaleFactor;
        }

        private double updateSIS(FileInfo[] fileList)
        {
            double newHeightScaleFactor = mHeightScaleFactor;

            List<string> sis = new List<string>();
            foreach (var file in fileList)
            {
                sis.Add(file.FullName);
            }
            SelectKeyDialog frmSelect = new SelectKeyDialog();

            frmSelect.ShowDialog();

            {
                string fileContents = File.ReadAllText(frmSelect.SelectedKey);

                var pattern = @"<I3 n=""HeightScaleFactor"">(.*)</I3>";

                var pattern2 = @"(<I3 n=""HeightScaleFactor"">)(.*)(</I3>)";

                Regex rx = new Regex(pattern2, RegexOptions.Compiled);

                MatchCollection matches = rx.Matches(fileContents);

                List<double> factors = new List<double>();

                if (matches.Count > 0)
                {
                    foreach (Match e in matches)
                    {

                        Console.WriteLine(e.Groups[2].Value);
                        factors.Add(Convert.ToDouble(e.Groups[2].Value, System.Globalization.CultureInfo.InvariantCulture));

                    }

                }
                if (factors.Count == 0)
                {
                    factors.Add(1.0);
                }


                newHeightScaleFactor = factors[0] * mHeightScaleFactor;

                var res = MessageBox.Show("actual HeightScale Factor: " + factors[0] + "\n" + "new HeightScale Factor: " + newHeightScaleFactor.ToString(), "Confirm ", MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation);

                if (DialogResult.OK == res)
                {
                    var replace = @"<I3 n=""HeightScaleFactor"">" + newHeightScaleFactor.ToString("0.000000", System.Globalization.CultureInfo.InvariantCulture) + "</I3>";

                    var newContent = Regex.Replace(fileContents, pattern2, replace); //"$1"+ heightScaleFactor.ToString()+"$3");

                    File.WriteAllText(frmSelect.SelectedKey, newContent);


                    var p64 = Environment.GetEnvironmentVariable("NFEVAL_DIR_64");


                    if (new DirectoryInfo(p64 + "\\log").Exists == true)
                    {
                        using (StreamWriter file = File.AppendText(p64 + @"\\log\\HeightScaleFactor.log"))
                        {
                            file.WriteLine("-----------------------------------------------------------------------------------------");
                            file.WriteLine(DateTime.Now.ToShortDateString() + "  " + DateTime.Now.ToLongTimeString());
                            file.WriteLine(frmSelect.SelectedKey);
                            file.WriteLine("actual HeightScale Factor: " + factors[0] + "\n" + "new HeightScale Factor: " + newHeightScaleFactor.ToString());
                            file.WriteLine("-----------------------------------------------------------------------------------------");

                        }
                    }
                }
                else
                {
                    newHeightScaleFactor = factors[0];
                }

            }
            return newHeightScaleFactor;
        }



        public double getHeightScaleFactor()
        {
            return mHeightScaleFactor;
        }

        private double mHeightScaleFactor;
    }



}
