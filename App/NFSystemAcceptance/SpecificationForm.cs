using de.nanofocus.NFEval;
using System.Collections.Generic;
using System.Windows.Forms;
using System.IO;
using Newtonsoft.Json;
using System;
using System.Linq;
using System.Runtime.Remoting.Channels;
using SystemAcceptance.Helpers;

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


        private NFParameterSetPointer stagesType;

        //out
        public NFParameterSetPointer sensorParameter;
        public NFParameterSetPointer standardParameter;
        public NFParameterSetPointer infoParameter;
        public NFParameterSetPointer stagesParameter;

        NFParameterSetReaderPointer preader = NFParameterSetReader.New();

        private DirectoryInfo standardsPath;
        private DirectoryInfo sensorPath;
        public string Standard;
        private string Sensor;

        private FileInfo fileInfo;

        private Info info = new Info();//

        private void SaveSystemType(int sType)
        {
            try
            {
                Directory.CreateDirectory(Path.GetDirectoryName(FileHelper.systemTypeSetting).Trim());
                File.WriteAllText(FileHelper.systemTypeSetting, sType.ToString());
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        private void LoadSystemTypes()
        {
            string filePath = FileHelper.systemTypFile;

            if (!File.Exists(filePath))
            {
                MessageBox.Show("systemTyp.json not found");
                return;
            }

            string json = File.ReadAllText(filePath);

            var systemTypes = JsonConvert.DeserializeObject<List<string>>(json);

            cmbSystemType.DataSource = systemTypes;
            if (systemTypes.Count > 0) 
            {
                cmbSystemType.SelectedIndex = FileHelper.GetSystemType();
                infoParameter.setParameter("SystemTypeName", new NFVariant(systemTypes[FileHelper.GetSystemType()]));
            }
            else
            {
                infoParameter.setParameter("SystemTypeName", new NFVariant(""));
            }
        }


        public SpecificationForm(string rootPath, string selectedTab, bool isFits, string file)
        {
            InitializeComponent();
            //cmbSystemType.SelectedIndex = FileHelper.GetSystemType();
            //LoadSystemTypes();
            //---------- Load Info.json ---------------
            string infoFile = File.ReadAllText(FileHelper.infoSettings);
            Info jsonFile = JsonConvert.DeserializeObject<Info>(infoFile);
            txtCustomer.Text = jsonFile.Customer;
            txtTester.Text = jsonFile.Tester;
            txtTemperature.Text = jsonFile.Temperature;
            txtLocation.Text = jsonFile.Location;
            txtHumidity.Text = jsonFile.Humidity;
            txtSystemNumber.Text = jsonFile.SystemNummer;
            //-----------------------------------------

            string sTab = selectedTab;

            button1.Click += (sender, args) =>
            {
                Close();
            };

            if (isFits)
            {
                cmbSensor.Enabled = false;
            }
            else
            {
                cmbSensor.Enabled = true;
            }

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
                Properties.Settings.Default.LastSelectedStandard = Standard;
                Properties.Settings.Default.Save();
                Properties.Settings.Default.Upgrade();

                NFVariant v = standardType.getParameter(Standard);

                standardParameter = new NFParameterSetPointer(v.getParameterSet());
            };

            // ---------------------------------------------------------------
            //if (!isFits)
            //{
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

            // ========================================================== If .Fits ==========================================================
            if (isFits)
            {
                NFTopographyPointer topo;
                string actualFilename = file;
                NFFileReaderPointer reader = NFFileReader.New();

                ////Write
                //NFFileWriterPointer writer = NFFileWriter.New();
                //writer.setInputTopo(topo);
                //writer.setFileName(actualFilename);
                //writer.evaluate();
                //// ----------

                reader.setFileName(actualFilename);
                int rc = reader.evaluate();
                if (rc != 0)
                {
                    MessageBox.Show("Couldn't read the file!");
                }
                topo = reader.getOutputTopo();

                if (topo != null)
                {
                    if (topo.getMetaData().containsParameter("Lens"))
                    {
                        string sensor = topo.getMetaData().getParameter("Lens").valueToString();
                        if (sensor.Contains("_"))
                        {
                            string s = string.Concat(sensor.TakeWhile((c) => c != '_'));
                            Console.WriteLine(s);
                            Sensor = s;
                        }
                        else if (sensor.Contains(" "))
                        {
                            string s = string.Concat(sensor.TakeWhile((c) => c != ' '));
                            Console.WriteLine(s);
                            Sensor = s.ToString();
                        }
                        else
                        {
                            Sensor = sensor;
                        }
                        //Console.WriteLine(sensor);
                    }
                    if (topo.getMetaData().containsParameter("Serial"))
                    {
                        string serial = topo.getMetaData().getParameter("Serial").valueToString();
                        txtSystemNumber.Text = serial;
                        jsonFile.SystemNummer = serial;
                    }
                    else
                    {
                        txtSystemNumber.Text = jsonFile.SystemNummer;
                    }

                    if (topo.getMetaData().containsParameter("LensSerialNumber"))
                    {
                        string lensNr = topo.getMetaData().getParameter("LensSerialNumber").valueToString();
                        txtLensNr.Text = lensNr;
                        jsonFile.SystemNummer = lensNr;
                    }

                    //Console.WriteLine(topo.getMetaData().toJSON().ToString());
                }
            }
            //===============================================================================================================================
            else
            {}

            NFParameterNameListType sensorTypelist = sensorType.getParameterNames();
            if (sensorTypelist.Count > 0)
            {
                cmbSensor.DataSource = new List<string>(sensorTypelist);
                if (isFits)
                {
                    foreach (string sensorType in sensorTypelist)
                    {
                        if (!string.IsNullOrEmpty(Sensor) && Sensor.Contains(sensorType))
                        {
                            Console.WriteLine($"{sensorType}");
                            cmbSensor.SelectedItem = sensorType;
                        }
                    }
                }
                else
                {
                    cmbSensor.SelectedItem = sensorTypelist[0];
                }

                NFVariant v = sensorType.getParameter(cmbSensor.SelectedItem.ToString());
                sensorParameter = new NFParameterSetPointer(v.getParameterSet());
            }


            cmbSensor.SelectedIndexChanged += (sender, args) =>
            {
                var selection = cmbSensor.SelectedItem.ToString();

                NFVariant v = sensorType.getParameter(selection);

                sensorParameter = new NFParameterSetPointer(v.getParameterSet());
            };
            //}
            

            //   info
            {

                infoParameter = NFParameterSet.New();

                LoadSystemTypes();


                infoParameter.setParameter("Tester Name", new NFVariant(jsonFile.Tester));
                infoParameter.setParameter("Location", new NFVariant(jsonFile.Location));
                infoParameter.setParameter("Customer", new NFVariant(jsonFile.Customer));
                infoParameter.setParameter("Temperature", new NFVariant(jsonFile.Temperature));
                infoParameter.setParameter("Humidity", new NFVariant(jsonFile.Humidity));
                infoParameter.setParameter("Serial", new NFVariant(jsonFile.SystemNummer));
                infoParameter.setParameter("LensSerialNumber", new NFVariant(jsonFile.LensNr));


                //foreach (string p in infoParameter.getParameterNames())
                //{
                //    Console.WriteLine(p);
                //}

                cmbSystemType.SelectedIndexChanged += (sender, args) =>
                {
                    string selectedSys = cmbSystemType.SelectedItem.ToString();
                    infoParameter.setParameter("SystemTypeName", new NFVariant(selectedSys));
                    SaveSystemType(cmbSystemType.SelectedIndex);
                };

                txtTester.TextChanged += (sender, args) =>
                {
                    infoParameter.setParameter("Tester Name", new NFVariant(txtTester.Text));
                };

                txtLocation.TextChanged += (sender, args) =>
                {
                    infoParameter.setParameter("Location", new NFVariant(txtLocation.Text));
                };

                txtCustomer.TextChanged += (sender, args) =>
                {
                    infoParameter.setParameter("Customer", new NFVariant(txtCustomer.Text));
                };

                txtTemperature.TextChanged += (sender, args) =>
                {
                    infoParameter.setParameter("Temperature", new NFVariant(txtTemperature.Text));
                };

                txtHumidity.TextChanged += (sender, args) =>
                {
                    infoParameter.setParameter("Humidity", new NFVariant(txtHumidity.Text));
                };
                txtSystemNumber.TextChanged += (sender, args) =>
                {
                    infoParameter.setParameter("Serial", new NFVariant(txtSystemNumber.Text));
                };

                txtLensNr.TextChanged += (sender, args) =>
                {
                    infoParameter.setParameter("LensSerialNumber", new NFVariant(txtLensNr.Text));
                };
                string json = JsonConvert.SerializeObject(jsonFile, Formatting.Indented);
                File.WriteAllText(FileHelper.infoSettings, json);
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

            //cmbSensor.SelectedIndex = 0;
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
                if (!string.IsNullOrEmpty(Properties.Settings.Default.LastSelectedStandard))
                {
                    string s = Properties.Settings.Default.LastSelectedStandard;
                    foreach (var item in dataSource)
                    {
                        if (s == item.Name)
                        {
                            cmb.SelectedValue = s;
                        }
                    }
                }
                else
                {
                    cmb.SelectedItem = dataSource[0];
                    //cmb.SelectedValue = dataSource[0].ToString();
                }
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



        private void SpecificationForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            try
            {
                info.Customer = txtCustomer.Text;
                info.SystemNummer = txtSystemNumber.Text;
                info.Tester = txtTester.Text;
                info.Temperature = txtTemperature.Text;
                info.Location = txtLocation.Text;
                info.Humidity = txtHumidity.Text;
                info.LensNr = txtLensNr.Text;
                string jsonData = JsonConvert.SerializeObject(info, Formatting.Indented);

                string outputFile = FileHelper.infoSettings;
                string outputPath = FileHelper.SettingFiles;
                if (outputFile != null)
                {
                    File.WriteAllText(outputFile, jsonData);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        private void txtTemperature_KeyPress(object sender, KeyPressEventArgs e)
        {

            if (char.IsControl(e.KeyChar))
            {
                return;
            }

            if (char.IsDigit(e.KeyChar))
            {
                string txt = txtTemperature.Text;
                int commaPos = txt.IndexOf(',');

                if (commaPos == -1)
                {
                    if (txt.Length >= 2)
                    {
                        e.Handled = true;
                    }
                }
                else
                {
                    if (commaPos >= 2 && txtTemperature.SelectionStart <= commaPos)
                    {
                        e.Handled = true;
                    }
                }
                return;
            }

            if (e.KeyChar == ',')
            {
                if (!txtTemperature.Text.Contains(','))
                {
                    return;
                }
                e.Handled = true;
                return;
            }
            e.Handled = true;
        }

        private void txtHumidity_KeyPress(object sender, KeyPressEventArgs e)
        {

            if (char.IsControl(e.KeyChar))
            {
                return;
            }
            if (char.IsDigit(e.KeyChar))
            {
                if (txtHumidity.Text.Length >= 2)
                {
                    e.Handled = true;
                }
                return;
            }


            e.Handled = true;
        }



        private void txtTemperature_TextChanged(object sender, EventArgs e)
        {
            TextBox tb = txtTemperature;
            string txt = tb.Text;
            if (string.IsNullOrEmpty(txt))
            {
                return;
            }

            int commaPos = txt.IndexOf(',');
            if (commaPos == -1)
            {
                return;
            }
            string before = txt.Substring(0, commaPos + 1);
            string after = txt.Substring(commaPos + 1);

            if (after.Length > 1)
            {
                after = after.Substring(0, 1);
                tb.Text = before + after;
                tb.SelectionStart = tb.Text.Length;
            }
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