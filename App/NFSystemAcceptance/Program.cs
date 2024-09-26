using ProgressODoom;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SystemAcceptance
{
    static class Program
    {
        private static string AppName = "NFSystemCalibration";
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            using (Mutex mutex = new Mutex(false, "Global\\" + AppName))
            {
                if (!mutex.WaitOne(0, false))
                {
                    MessageBox.Show("SystemAcceptance is already running.", AppName, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
            }
            SetEnviromentVariables();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            Application.Run(new mainForm());

            de.nanofocus.NFEval.NFEvalCSHelpers.NFEvalDestroy();
        }
        
        private static int SetEnviromentVariables()
        {
            int ret = 0;
            try
            {
                string PluginPath = Environment.GetEnvironmentVariable("NFEVAL_PLUGIN_DIRS",EnvironmentVariableTarget.Machine);
                
                if(PluginPath.Length == 0)
                {

                }
                string addedPath = "c:\\Program Files\\Nanofocus\\evaluation\\Plugins;" + PluginPath;
                Environment.SetEnvironmentVariable("NFEVAL_PLUGIN_DIRS", addedPath, EnvironmentVariableTarget.Process);
            
            }
            catch (Exception ex)
            {
                MessageBox.Show("Problem during environment initialization " + ex.Message); 
            }

            return ret;
        }
     
        class CopyDir
        {
            public static void CopyAll(DirectoryInfo source, DirectoryInfo target)
            {
                if (source.FullName.ToLower() == target.FullName.ToLower())
                {
                    return;
                }

                // Check if the target directory exists, if not, create it.
                if (Directory.Exists(target.FullName) == false)
                {
                    Directory.CreateDirectory(target.FullName);
                }

                // Copy each file into it's new directory.
                foreach (FileInfo fi in source.GetFiles())
                {
                    Console.WriteLine(@"Copying {0}\{1}", target.FullName, fi.Name);
                    fi.CopyTo(Path.Combine(target.ToString(), fi.Name), true);
                }

                // Copy each subdirectory using recursion.
                foreach (DirectoryInfo diSourceSubDir in source.GetDirectories())
                {
                    DirectoryInfo nextTargetSubDir =
                        target.CreateSubdirectory(diSourceSubDir.Name);
                    CopyAll(diSourceSubDir, nextTargetSubDir);
                }
            }

            //public static void Main()
            //{
            //    string sourceDirectory = @"c:\sourceDirectory";
            //    string targetDirectory = @"c:\targetDirectory";

            //    DirectoryInfo diSource = new DirectoryInfo(sourceDirectory);
            //    DirectoryInfo diTarget = new DirectoryInfo(targetDirectory);

            //    CopyAll(diSource, diTarget);
            //}

            // Output will vary based on the contents of the source directory.
        }
    }
}
