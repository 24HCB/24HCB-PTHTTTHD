using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using Microsoft.SqlServer.Dts.Runtime;
using System.Windows.Forms;

namespace _1542232_Exec
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DialogResult result = openFileDialog1.ShowDialog(); // Show the dialog.
            if (result == DialogResult.OK) // Test result.
            {
                string file = openFileDialog1.FileName;
                try
                {
                    string pkgLocation = @"E:\HoanChinh\CCLTHienDai\Thuchanh\1542232_Exec\1542232_Exec\Package.dtsx";
                    Package pkg;
                    Microsoft.SqlServer.Dts.Runtime.Application app;
                    DTSExecResult pkgResults;
                    Variables vars;
                    app = new Microsoft.SqlServer.Dts.Runtime.Application();
                    pkg = app.LoadPackage(pkgLocation, null);
                    vars = pkg.Variables;
                    vars["User::source_file"].Value = file;
                    pkgResults = pkg.Execute(null, vars, null, null, null);

                    if (pkgResults == DTSExecResult.Success)
                    {
                        textBox1.Text = file;
                        label2.Text = "Imported!!";
                    }
                    else
                        label2.Text = "Failed!";
                }
                catch (IOException)
                {
                }
            }

        }
    }
}
