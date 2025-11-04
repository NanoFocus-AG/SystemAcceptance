using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using SystemAcceptance.Helpers;

namespace SystemAcceptance
{
    internal class FileHelper
    {
        private static readonly string ProgramData_Folder = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.CommonApplicationData) + @"\Nanofocus\");
        private static readonly string AppName = Assembly.GetExecutingAssembly().GetName().Name;
        public static string RepositoryPath = "C:\\ProgramData\\NanoFocus\\SystemAcceptance\\";
        public static string optionsFile = RepositoryPath + "PdfOptions.json";
        public static string SettingFiles = ProgramData_Folder + AppName + "\\settings\\";
        public static string infoSettings = SettingFiles + "info.json";
        public static string languageSettings = SettingFiles + "lang.txt";
        public static string LogsDir = Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles) + @"\Nanofocus\metrology\log\";

        //public static void CheckSettingsFile()
        //{
        //    try
        //    {
        //        if (!Directory.Exists(SettingFiles) || !File.Exists(SettingFiles))
        //        {
        //            Directory.CreateDirectory(SettingFiles);
        //            Info info = new Info();
        //            info.Customer = "Default";
        //            info.SystemNummer = "Default";
        //            info.Tester = "Default";
        //            info.Temperature = "Default";
        //            info.Location = "Default";
        //            info.Humidity = "Default";
        //            string jsFile = JsonConvert.SerializeObject(info, Formatting.Indented);

        //            File.WriteAllText(infoSettings, jsFile);
        //        }
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}

        public static void CheckSettingsFile()
        {
            try
            {
                if (string.IsNullOrWhiteSpace(SettingFiles))
                    throw new ArgumentException("SettingFiles path cannot be null or empty.");

                if (string.IsNullOrWhiteSpace(infoSettings))
                    throw new ArgumentException("infoSettings path cannot be null or empty.");

                if (!Directory.Exists(SettingFiles))
                {
                    Directory.CreateDirectory(SettingFiles);
                }

                if (!File.Exists(infoSettings))
                {
                    Info info = new Info
                    {
                        Customer = "Default",
                        SystemNummer = "Default",
                        Tester = "Default",
                        Temperature = "Default",
                        Location = "Default",
                        Humidity = "Default"
                    };

                    string json = JsonConvert.SerializeObject(info, Formatting.Indented);
                    File.WriteAllText(infoSettings, json);
                }
            }
            catch (Exception ex)
            {
                throw; 
            }
        }


        public static string SearchForLanguages(string projectPath, string languageDir, string mdFile)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(projectPath) ||
                    string.IsNullOrWhiteSpace(languageDir) ||
                    string.IsNullOrWhiteSpace(mdFile))
                {
                    return null;
                }

                string finalPath = Directory
                    .GetDirectories(projectPath, languageDir, SearchOption.TopDirectoryOnly)
                    .FirstOrDefault() ?? projectPath;

                string filePath = Path.Combine(finalPath, mdFile);

                return File.Exists(filePath) ? filePath : null;
            }
            catch (DirectoryNotFoundException)
            {
                return null;
            }
            catch (IOException)
            {
                return null;
            }
            catch (UnauthorizedAccessException)
            {
                return null;
            }
        }

        public static void DeleteJsonFile(string directoryPath, string fileName)
        {
            string filePath = Path.Combine(directoryPath, fileName);

            if (!fileName.EndsWith(".json", StringComparison.OrdinalIgnoreCase))
            {
                Console.WriteLine("Error: File must have a .json extension.");
                return;
            }

            if (File.Exists(filePath))
            {
                try
                {
                    File.Delete(filePath);
                    Console.WriteLine($"File '{filePath}' deleted successfully.");
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error deleting file: {ex.Message}");
                }
            }
            else
            {
                Console.WriteLine($"File '{filePath}' does not exist.");
            }
        }

    }
}
