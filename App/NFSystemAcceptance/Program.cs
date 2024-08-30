using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace NFSystemAcceptance
{
    static class Program
    { 
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
           
            SetEnviromentVariables();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            bool splash = true;
            Progress.ProgressBar progressBar = null;
            Task splashTask = Task.Run(() =>
            {
                progressBar = new Progress.ProgressBar();

                while (splash)
                {
                    Application.DoEvents();
                    Task.Delay(100);
                }

            });

            de.nanofocus.NFEval.NFEvalCSHelpers.NFEvalInit();


 



            try
            {
                Dictionary<string, DirectoryInfo> tabInfo = new Dictionary<string, DirectoryInfo>();

                string repositoryPath = "C:\\ProgramData\\NanoFocus\\SystemAcceptance\\";
 

                IEnumerable<string> dirList = null;
                if(Directory.Exists(repositoryPath))   dirList =   Directory.EnumerateDirectories(repositoryPath);

                if (Directory.Exists(repositoryPath) == false || dirList.Count() ==0 )
                {

                   

                    throw new Exception("No Templates in folder " + repositoryPath );
                   
                }
                


                System.IO.DirectoryInfo dir = new DirectoryInfo(repositoryPath);
                
                System.IO.DirectoryInfo[] sub = dir.GetDirectories();

                List<string> data = new List<string>();
                foreach (var item in sub)
                {
                    if (!item.Name.StartsWith("."))
                    {
                        data.Add(item.Name);
                    }
                }
                string system = "CM";
                progressBar.Stop();

                splash = false;
                splashTask.Wait();

                if (data.Count != 0)
                {
                    SelectKeyDialog frmSelect = new SelectKeyDialog(data, "System Type");
                    frmSelect.ShowDialog();

                    system = frmSelect.SelectedKey;
                }

                System.IO.DirectoryInfo rootDir = new DirectoryInfo(repositoryPath + system);
                if (true == Directory.Exists(repositoryPath + system))
                {
                                                                                                         

                    System.IO.DirectoryInfo[] subDirs = rootDir.GetDirectories();

                    foreach (System.IO.DirectoryInfo dirInfo in subDirs)
                    {
                        var files = dirInfo.GetFiles("*.md");

                        if (files.Length != 0)
                        {

                            tabInfo.Add(dirInfo.Name, dirInfo);

                        }


                    }

                }
                else
                {
                    throw new Exception((repositoryPath + system).ToString() + " does not exist");
                }


                if (tabInfo.Count == 0)
                {

                     throw new Exception("No Templates available");

                  

                }
                

                Application.Run(new mainForm(tabInfo, rootDir.FullName));



            }
            catch( Exception ex )
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                de.nanofocus.NFEval.NFEvalCSHelpers.NFEvalDestroy();
            }

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
            catch (System.Exception ex)
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
