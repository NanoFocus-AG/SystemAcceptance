using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace NFSystemAcceptance
{
    public partial class SelectKeyDialog : Form
    {
        public string SelectedKey;
        public SelectKeyDialog(List<String> data, string description)
        {
            SelectedKey = "";
            InitializeComponent();
            TopLevel = true;
            comboBox1.DataSource = data;

            btnOk.Click += (sender, args) => { Close(); };

            comboBox1.SelectedIndexChanged += (sender,args) =>
            {

                if (comboBox1.SelectedItem != null)
                {
                    SelectedKey = comboBox1.SelectedItem.ToString();
                }

            };
            comboBox1.SelectedIndex = -1;
            comboBox1.SelectedIndex = 0;

            label1.Text = description;
            Text = "Select " + description; 
        }
    }
}
