using Newtonsoft.Json;
using NLog;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Windows.Forms;
using SystemAcceptance.Properties;

namespace SystemAcceptance
{
    public partial class PdfOptions : Form
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        public event EventHandler<string> OptionsChanged;

        string path;
        Dictionary<string, decimal> optionsDict = new Dictionary<string, decimal>();
        private double MTop { get; set; }
        private double MBottom { get; set; }
        private double MLeft { get; set; }
        private double MRight { get; set; }

        public PdfOptions()
        {
            InitializeComponent();
        }

        private void SetDefault()
        {
            MTop = 10.16;
            MBottom = 10.16;
            MLeft = 25.4;
            MRight = 25.4;
            MarginTop.Value = (decimal)MTop;
            MarginBottom.Value = (decimal)MBottom;
            MarginLeft.Value = (decimal)MLeft;
            MarginRight.Value = (decimal)MRight;
        }
        private void OnOptionChanged(string file)
        {
            OptionsChanged?.Invoke(this, file);
            logger.Info($"{MethodBase.GetCurrentMethod().Name} Path: {file}");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            optionsDict.Clear();
            Control.ControlCollection controlCollection = groupBox1.Controls;
            foreach (NumericUpDown control in controlCollection.OfType<NumericUpDown>())
            {
                optionsDict.Add(control.Name, control.Value);
            }
            string jsFile = JsonConvert.SerializeObject(optionsDict, Formatting.Indented);

            File.WriteAllText(path, jsFile);
            OnOptionChanged(path);
            logger.Info($"{MethodBase.GetCurrentMethod().Name} PDF Options Window Closed!");
            Close();
        }

        private void PdfOptions_Load(object sender, EventArgs e)
        {
            logger.Info($"{MethodBase.GetCurrentMethod().Name} ");
            Control.ControlCollection controlCollection = groupBox1.Controls;
            string file;// = File.ReadAllText(path);

            //path = Settings.Default.OptionsPath;
            path = FileHelper.optionsFile;

            if (!File.Exists(path))
            {
                SetDefault();
                using (File.Create(path)){}

                foreach (NumericUpDown control in controlCollection.OfType<NumericUpDown>())
                {
                    optionsDict.Add(control.Name, control.Value);
                }
                string jsFile = JsonConvert.SerializeObject(optionsDict);

                File.WriteAllText(path, jsFile);
                Console.WriteLine(path);
            }
            else
            {
                file = File.ReadAllText(path);
                if (new FileInfo(path).Length == 0)
                {
                    SetDefault();
                }
                else
                {
                    optionsDict = JsonConvert.DeserializeObject<Dictionary<string, decimal>>(file);
                    foreach (NumericUpDown control in controlCollection.OfType<NumericUpDown>())
                    {
                        if (optionsDict.ContainsKey(control.Name))
                        {
                            control.Value = optionsDict[control.Name];
                        }
                    }
                }
            }
            CenterToParent();
        }

       
        private void MarginLeft_ValueChanged(object sender, EventArgs e)
        {
            MarginRight.Value = MarginLeft.Value;
            logger.Info($"{MethodBase.GetCurrentMethod().Name} MarginRight: {MarginRight.Value}");
        }

        private void MarginRight_ValueChanged(object sender, EventArgs e)
        {
            MarginLeft.Value = MarginRight.Value;
            logger.Info($"{MethodBase.GetCurrentMethod().Name} MarginLeft: {MarginLeft.Value}");
        }

    }
}
