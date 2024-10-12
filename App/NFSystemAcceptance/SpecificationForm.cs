using de.nanofocus.NFEval;
using System.Collections.Generic;
using System.Windows.Forms;
using System.IO;
using Newtonsoft.Json;

namespace SystemAcceptance
{

    public partial class SpecificationForm : Form
    {
        class ParamName
        {
            public ParamName(string input)
            {
                Name = input;
                DisplayName = toAnsi(input);
            }
            public string Name
            {
                get;
                set;
            }

            public string DisplayName
            {
                get;
                set;
            }

            private string toAnsi(string input)
            {
                // Create  different encodings.
                System.Text.Encoding unicode = System.Text.Encoding.Unicode;
                System.Text.Encoding utf8 = System.Text.Encoding.UTF8;
                System.Text.Encoding ansi = System.Text.Encoding.GetEncoding(28591);

                // Convert the string into a byte array.
                byte[] uBytes = unicode.GetBytes(input);
                byte[] utf8byte = System.Text.Encoding.Convert(unicode, utf8, uBytes);

                // Perform the conversion from one encoding to the other.
                byte[] ansibytes = System.Text.Encoding.Convert(utf8, ansi, utf8byte);

                ansibytes = System.Text.Encoding.Convert(utf8, ansi, ansibytes);

                // Convert the new byte[] into a char[] and then into a string.
                char[] ansiChars =
                    new char[ansi.GetCharCount(ansibytes, 0, ansibytes.Length)];

                ansi.GetChars(ansibytes, 0, ansibytes.Length, ansiChars, 0);

                string ansiString = new string(ansiChars);

                return ansiString;
            }
        }
        private NFParameterSetPointer standardType;

        private NFParameterSetPointer sensorType;

        private NFParameterSetPointer testerType;
        private NFParameterSetPointer stagesType;

        //out
        public NFParameterSetPointer sensorParameter;
        public NFParameterSetPointer standardParameter;
        public NFParameterSetPointer testerParameter;
        public NFParameterSetPointer stagesParameter;

        NFParameterSetReaderPointer preader = NFParameterSetReader.New();

        private DirectoryInfo standardsPath;
        private DirectoryInfo sensorPath;
        public string Standard;
        private FileInfo fileInfo;

        public SpecificationForm(string rootPath, string selectedTab)
        {
            InitializeComponent();

            string sTab = selectedTab;

            button1.Click += (sender, args) =>
            {
                Close();
            };


            standardsPath = new DirectoryInfo(rootPath + "\\Standards");
            var standardJS = new DirectoryInfo(rootPath + "\\" + sTab);
            FileInfo[] standardSpecs;// = new FileInfo(standardsPath.FullName);
            string csvFile = string.Empty;

            if (standardsPath.Exists == false) return;

            string standardsJsonFile = standardJS.FullName + "\\" + "Standards.json";
            if (!File.Exists(standardsJsonFile))
            {
                MessageBox.Show("'Standards.json' file not found!");
                label10.Text = "not found!";
                foreach (Control ctrl in Controls)
                {
                    if (ctrl.Name != "button1")
                    {
                        ctrl.Enabled = false;
                    }
                }
                return;
            }
            else
            {
                Dictionary<string, string> stdTypeDict = new Dictionary<string, string>();
                string std = File.ReadAllText(standardsJsonFile);
                stdTypeDict = JsonConvert.DeserializeObject<Dictionary<string, string>>(std);
                foreach (var item in stdTypeDict)
                {
                    string sKey = item.Key;
                    string sValue = item.Value;
                    if (sKey == sTab)
                    {
                        csvFile = sValue;
                        label10.Text = sValue;
                    }
                }
            }
            standardSpecs = standardsPath.GetFiles(csvFile);

            if (standardSpecs.Length > 0)
            {
                fileInfo = standardSpecs[0];
                preader.setSource(fileInfo.FullName);

                bool readSuccess = preader.read();
                if (false == readSuccess)
                {
                    MessageBox.Show("Could not read " + fileInfo.FullName);
                    return;
                }
                standardType = preader.getParameterSet();
                ParameterSetAsDataSource(standardType, cmbStandard);

                Standard = cmbStandard.SelectedValue.ToString();
                NFVariant v = standardType.getParameter(Standard);
                standardParameter = new NFParameterSetPointer(v.getParameterSet());
            }

            if (standardSpecs.Length > 0)
            {

                bool readSuccess = preader.read();
                if (false == readSuccess)
                {
                    MessageBox.Show("Could not read " + fileInfo.FullName);
                    return;
                }
                standardType = preader.getParameterSet();
                ParameterSetAsDataSource(standardType, cmbStandard);

                Standard = cmbStandard.SelectedValue.ToString();
                NFVariant v = standardType.getParameter(Standard);
                standardParameter = new NFParameterSetPointer(v.getParameterSet());
            }
         
            //--------------------------------------------------------------

            cmbStandard.SelectedIndexChanged += (sender, args) =>
            {
                Standard = cmbStandard.SelectedValue.ToString();

                NFVariant v = standardType.getParameter(Standard);

                standardParameter = new NFParameterSetPointer(v.getParameterSet());
            };

            // ---------------------------------------------------------------

            sensorPath = new DirectoryInfo(rootPath + "\\sensors");

            var sensorSpecs = sensorPath.GetFiles("*.csv");
            sensorType = NFParameterSet.New();

            foreach (var sen in sensorSpecs)
            {

                preader.setSource(sensorPath.FullName + "\\" + sen);
                bool success = preader.read();
                if (success == true)
                {
                    sensorType.addDataFrom(preader.getParameterSet());
                }
                else
                {
                    MessageBox.Show("could not read " + sensorPath.FullName + "\\" + sen);
                }
            }


            var sensorTypelist = sensorType.getParameterNames();
            if (sensorTypelist.Count > 0)
            {
                cmbSensor.DataSource = new List<string>(sensorTypelist);
                cmbSensor.SelectedItem = sensorTypelist[0];

                NFVariant v = sensorType.getParameter(cmbSensor.SelectedItem.ToString());
                sensorParameter = new NFParameterSetPointer(v.getParameterSet());
            }


            cmbSensor.SelectedIndexChanged += (sender, args) =>
            {
                var selection = cmbSensor.SelectedItem.ToString();

                NFVariant v = sensorType.getParameter(selection);

                sensorParameter = new NFParameterSetPointer(v.getParameterSet());
            };

            //   tester
            {
                testerParameter = NFParameterSet.New();
                testerParameter.setParameter("Tester Name", new NFVariant(txtTester.Text));
                testerParameter.setParameter("Location", new NFVariant(txtLocation.Text));
                testerParameter.setParameter("Customer", new NFVariant(txtCustomer.Text));
                testerParameter.setParameter("Temperature", new NFVariant(txtTemperature.Text));
                testerParameter.setParameter("Humidity", new NFVariant(txtHumidity.Text));

                txtTester.TextChanged += (sender, args) =>
                {

                    testerParameter.setParameter("Tester Name", new NFVariant(txtTester.Text));
                };

                txtLocation.TextChanged += (sender, args) =>
                {
                    testerParameter.setParameter("Location", new NFVariant(txtLocation.Text));
                };

                txtCustomer.TextChanged += (sender, args) =>
                {

                    testerParameter.setParameter("Customer", new NFVariant(txtCustomer.Text));
                };

                txtTemperature.TextChanged += (sender, args) =>
                {

                    testerParameter.setParameter("Temperature", new NFVariant(txtTemperature.Text));
                };

                txtHumidity.TextChanged += (sender, args) =>
                {

                    testerParameter.setParameter("Humidity", new NFVariant(txtHumidity.Text));
                };

            }
            // TO DO : stages

            {
                preader.setSource(rootPath + "\\Stages.csv");
                bool success = preader.read();
                if (success == true)
                {
                    stagesType = preader.getParameterSet();

                    List<string> l = new List<string>(stagesType.getParameterNames());

                    cmbStages.DataSource = l;

                    cmbStages.SelectedItem = l[0];

                    var selection = cmbStages.SelectedItem.ToString();

                    NFVariant v = stagesType.getParameter(selection);

                    stagesParameter = new NFParameterSetPointer(v.getParameterSet());


                    cmbStages.SelectedIndexChanged += (sender, args) =>
                    {
                        var sel = cmbStages.SelectedItem.ToString();

                        NFVariant vv = stagesType.getParameter(sel);

                        stagesParameter = new NFParameterSetPointer(vv.getParameterSet());
                    };
                }
                else
                {
                    stagesParameter = NFParameterSet.New();
                    cmbStages.Enabled = false;
                }
            }

            cmbSensor.SelectedIndex = 0;
        }

        private void ParameterSetAsDataSource(NFParameterSetPointer p, ComboBox cmb)
        {
            List<string> paramNameList = new List<string>(p.getParameterNames());
            List<ParamName> dataSource = new List<ParamName>();

            foreach (var item in paramNameList)
            {
                dataSource.Add(new ParamName(item));
            }

            if (dataSource.Count > 0)
            {
                cmb.DataSource = dataSource;
                cmb.DisplayMember = "DisplayName";
                cmb.ValueMember = "Name";
                cmb.SelectedItem = dataSource[0];
            }
        }

        private void SpecificationForm_Load(object sender, System.EventArgs e)
        {

        }

        private string toAnsi(string input)
        {
            // Create  different encodings.
            System.Text.Encoding unicode = System.Text.Encoding.Unicode;
            System.Text.Encoding utf8 = System.Text.Encoding.UTF8;
            System.Text.Encoding ansi = System.Text.Encoding.GetEncoding(28591);

            // Convert the string into a byte array.
            byte[] uBytes = unicode.GetBytes(input);
            byte[] utf8byte = System.Text.Encoding.Convert(unicode, utf8, uBytes);

            // Perform the conversion from one encoding to the other.
            byte[] ansibytes = System.Text.Encoding.Convert(utf8, ansi, utf8byte);

            ansibytes = System.Text.Encoding.Convert(utf8, ansi, ansibytes);

            // Convert the new byte[] into a char[] and then into a string.
            char[] ansiChars =
                new char[ansi.GetCharCount(ansibytes, 0, ansibytes.Length)];

            ansi.GetChars(ansibytes, 0, ansibytes.Length, ansiChars, 0);

            string ansiString = new string(ansiChars);

            return ansiString;
        }

    }

}


/*
 * BindData(txtFile.Text);
        }
 
        private void BindData(string filePath)
        {
            DataTable dt = new DataTable();
            string[] lines = System.IO.File.ReadAllLines(filePath);
            if(lines.Length>0)
            {
                //first line to create header
                string firstLine = lines[0];
                string[] headerLabels = firstLine.Split(',');
                foreach(string headerWord in headerLabels)
                {
                    dt.Columns.Add(new DataColumn(headerWord));
                }
                //For Data
                for(int i=1;i<lines.Length;i++)
                {
                    string[] dataWords = lines[i].Split(',');
                    DataRow dr = dt.NewRow();
                    int columnIndex = 0;
                    foreach(string headerWord in headerLabels)
                    {
                        dr[headerWord] = dataWords[columnIndex++];
                    }
                    dt.Rows.Add(dr);
                }
            }
            if(dt.Rows.Count>0)
            {
                dataGridView1.DataSource = dt;
            }
            
        } 
 */