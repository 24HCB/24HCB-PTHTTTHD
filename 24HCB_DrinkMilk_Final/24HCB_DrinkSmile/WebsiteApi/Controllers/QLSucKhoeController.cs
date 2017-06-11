using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Microsoft.SqlServer.Dts.Runtime;
using System.IO;

namespace WebsiteApi.Controllers
{
    public class QLSucKhoeController : ApiController
    {
        // GET api/values
        public string Get()
        {
            string pkgLocation = @"C:\\Users\\ng.phuocloc\\Documents\\GitHub\\24HCB-PTHTTTHD\\24HCB_DrinkMilk_Final\\DrinkSmile_Code\\importFileChip\\1542238\\Import.dtsx";
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

            string message = "";
            for (int i = 0; i < files.Length; i++)
            {
                files[i] = Path.GetFileName(files[i]);
                vars["User::file_path"].Value = files[i];

                pkgResults = pkg.Execute(null, vars, null, null, null);

                if (pkgResults == DTSExecResult.Success)
                {
                    message = "Package ran successfully";
                    string fileToMove = rootFolderPath + files[i];
                    string moveTo = destinationPath + files[i];
                    //moving file
                    System.IO.File.Move(fileToMove, moveTo);
                }
                else
                {
                    message = "Package failed";
                }
            }

            return message;
        }
    }
}
