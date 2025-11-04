using Microsoft.Extensions.Logging;
using NLog;
using ProgressODoom;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SystemAcceptance
{
    static class Program
    {
        private static Logger log = LogManager.GetCurrentClassLogger();

        private static string AppName = "SystemAcceptance";
        private const string AppStarted = " |==============================> SystemAcceptance Started ";
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
                    log.Warn($"{MethodBase.GetCurrentMethod().Name} {AppName} is already running.");
                    MessageBox.Show("SystemAcceptance is already running.", AppName, MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }
            }
            log.Info(AppStarted + Application.ProductVersion + " <==============================| ");
            SetEnvironmentVariables();
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
            FileHelper.CheckSettingsFile();
            Application.Run(new mainForm());

            de.nanofocus.NFEval.NFEvalCSHelpers.NFEvalDestroy();
        }


        private static int SetEnvironmentVariables()
        {
            int ret = 0;
            string envVarName = "NFEVAL_PLUGIN_DIRS";
            log.Info($"{MethodBase.GetCurrentMethod().Name} started.");
            try
            {
                string existingValue = Environment.GetEnvironmentVariable(envVarName, EnvironmentVariableTarget.Machine);
                string defaultPluginDir = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles), "Nanofocus", "evaluation", "Plugins");

                string normalizedDefault = defaultPluginDir.TrimEnd(Path.DirectorySeparatorChar);
                List<string> existingPaths = new List<string>();
                if (!string.IsNullOrWhiteSpace(existingValue))
                {
                    existingPaths = existingValue.Split(new[] { ';' }, StringSplitOptions.RemoveEmptyEntries).Select(p => p.Trim().TrimEnd(Path.DirectorySeparatorChar)).ToList();
                }
                bool alreadyContains = existingPaths.Any(p => string.Equals(p, normalizedDefault, StringComparison.OrdinalIgnoreCase));
                string newValue = alreadyContains ? existingValue : string.Join(";", new[] { defaultPluginDir }.Concat(existingPaths));

                Environment.SetEnvironmentVariable(envVarName, newValue, EnvironmentVariableTarget.Process);
                log.Info($"{envVarName} successfully set to: {newValue}");
            }
            catch (Exception ex)
            {
                log.Error("Problem during environment initialization", ex);
                ret = -1;
            }
            return ret;
        }

        // https://stackoverflow.com/a/4851425
        //static void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        //{
        //    MessageBox.Show(e.ExceptionObject.ToString());
        //    Environment.Exit(1);
        //}
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
