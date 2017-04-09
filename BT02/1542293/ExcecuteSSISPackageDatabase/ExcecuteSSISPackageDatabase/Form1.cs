using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.SqlServer.Dts.Runtime;

namespace ExcecuteSSISPackageDatabase
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
                    
                    bool ketqua = exec_package(file);
                    if (ketqua)
                    {
                        textBox1.Text = file;
                        label2.Text = "Import dữ liệu thành công";
                    }
                    else
                        textBox1.Text = "Import dữ liệu thất bại";
                }
                catch (IOException)
                {
                }
            }
        }

        public bool exec_package(string file)
        {
            string packageLocation = @"C:\Users\John Nguyen\Desktop\1542293\SSISPackageCow\SSISPackageCow\Package.dtsx";
            Package package;
            Microsoft.SqlServer.Dts.Runtime.Application app;
            DTSExecResult pkgResults;
            Variables vars;
            app = new Microsoft.SqlServer.Dts.Runtime.Application();
            package = app.LoadPackage(packageLocation, null);
            vars = package.Variables;
            vars["User::source_Name"].Value = file;
            pkgResults = package.Execute(null, vars, null, null, null);

            if (pkgResults == DTSExecResult.Success)
                return true;
            else
                return false;
        }
    }
}
