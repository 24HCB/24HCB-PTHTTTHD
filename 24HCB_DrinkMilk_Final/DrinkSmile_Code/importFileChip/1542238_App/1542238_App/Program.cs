using System;
using Microsoft.SqlServer.Dts.Runtime;
using System.IO;

namespace _1542238_App
{
    class Program
    {
        static void Main(string[] args)
        {
            string pkgLocation = @"D:\Downloads\1542238\1542238\Import.dtsx";
            Package pkg;
            Application app;
            DTSExecResult pkgResults;
            Variables vars;
            app = new Application();
            pkg = app.LoadPackage(pkgLocation, null);

            vars = pkg.Variables;

            string[] files = Directory.GetFiles("C:\\Users\\ng.phuocloc\\Documents\\GitHub\\24HCB-PTHTTTHD\\24HCB_DrinkMilk_Final\\DrinkSmile_Code\\importFileChip\\COW_INFO", "*.xls");

            string rootFolderPath = "C:\\Users\\ng.phuocloc\\Documents\\GitHub\\24HCB-PTHTTTHD\\24HCB_DrinkMilk_Final\\DrinkSmile_Code\\importFileChip\\COW_INFO\\";
            string destinationPath = "C:\\Users\\ng.phuocloc\\Documents\\GitHub\\24HCB-PTHTTTHD\\24HCB_DrinkMilk_Final\\DrinkSmile_Code\\importFileChip\\COW_INFO_READED\\";

            for (int i = 0; i < files.Length; i++)
            {
                files[i] = Path.GetFileName(files[i]);
                vars["User::file_path"].Value = files[i];

                pkgResults = pkg.Execute(null, vars, null, null, null);

                if (pkgResults == DTSExecResult.Success)
                {
                    Console.WriteLine("Package ran successfully");
                    string fileToMove = rootFolderPath + files[i];
                    string moveTo = destinationPath + files[i];
                    //moving file
                    File.Move(fileToMove, moveTo);
                }
                else
                    Console.WriteLine("Package failed");
            }
        }
    }
}
