using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Newtonsoft.Json;

namespace SystemAcceptance
{
    public partial class PdfOptions : Form
    {
        public event EventHandler<string> OptionsChanged;

        string AppDataPath = "C:\\ProgramData\\NanoFocus\\SystemAcceptance\\";
        static string jsonFile = "PdfOptions.json";
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
            Close();
        }

        private void PdfOptions_Load(object sender, EventArgs e)
        {

            Control.ControlCollection controlCollection = groupBox1.Controls;
            string file;// = File.ReadAllText(path);

            if (!Directory.Exists(AppDataPath))
            {
                Directory.CreateDirectory(AppDataPath);
            }
            if (!File.Exists(path))
            {
                SetDefault();
                path = AppDataPath + jsonFile;
                using (File.Create(path))
                {
                    
                }

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
                optionsDict = JsonConvert.DeserializeObject<Dictionary<string, decimal>>(file);
                foreach (NumericUpDown control in controlCollection.OfType<NumericUpDown>())
                {
                    if (optionsDict.ContainsKey(control.Name))
                    {

                        control.Value = optionsDict[control.Name];
                    }
                }
            }

            CenterToParent();
        }

        private void NupDown_KeyPress(object sender, KeyPressEventArgs e)
        {
          
        }
    }
}
