using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SystemAcceptance
{
    internal class FileHelper
    {
        public static string SearchForLanguages(string projectPath, string languageDir, string mdFile)
        {
            string[] subdir = Directory.GetDirectories(projectPath, languageDir, SearchOption.TopDirectoryOnly);
            string finalPath = projectPath;
            if (subdir.Length > 0)
            {
                finalPath = subdir[0];
            }

            string file = Path.Combine(finalPath, mdFile);
            if (File.Exists(file))
            {
                return file;
            }
            else
            {
                return null;
            }
        }

    }
}
