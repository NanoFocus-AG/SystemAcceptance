using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace NFSystemCalibration
{
    public partial class AlgoForm : Form
    {

        public string Algo;
        public AlgoForm(List<string> data)
        {
            InitializeComponent();

            comboBox1.DataSource = data;

            comboBox1.SelectedIndexChanged += (sender, args) =>
            {
                Algo = comboBox1.SelectedItem.ToString();
            };

            button1.Click += (sender, args) =>
            {
                this.Close();

            };

        }
    }
}
