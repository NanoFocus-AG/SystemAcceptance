using CefSharp;
using System.Windows.Forms;

namespace NFSystemAcceptance
{

    /*
     *   public delegate void OnNewFileEventHandler(string  fullFile);

    class StatusListener
    {
        public event OnNewFileEventHandler OnNewFileEvent;
     * */

    public delegate void OnReloadPageEventHandler();
    internal class BrowserEngineMenuHandler : IContextMenuHandler
    {
        private const int ShowDevTools = 26501;
        private const int CloseDevTools = 26502;
        public event OnReloadPageEventHandler OnReloadPageEvent;
        class OnPrint : IPrintToPdfCallback
        {
            public bool IsDisposed { get; }


            public void OnPdfPrintFinished(string path, bool ok)
            {
                // throw new System.NotImplementedException();
            }

            public void Dispose()
            {
                //throw new System.NotImplementedException();
            }


        }

        void IContextMenuHandler.OnBeforeContextMenu(IWebBrowser browserControl, IBrowser browser, IFrame frame, IContextMenuParams parameters, IMenuModel model)
        {
            //To disable the menu then call clear
            model.Clear();

            //Removing existing menu item
            //  bool removed = model.Remove(CefMenuCommand.ViewSource); // Remove "View Source" option

            //Add new custom menu items
            model.AddItem((CefMenuCommand)ShowDevTools, "Show DevTools");
            model.AddItem((CefMenuCommand)CloseDevTools, "Close DevTools");
            model.AddItem(CefMenuCommand.UserFirst, "Export to PDF");
            model.AddItem(CefMenuCommand.UserFirst + 3, "Refresh");

        }

        bool IContextMenuHandler.OnContextMenuCommand(IWebBrowser browserControl, IBrowser browser, IFrame frame, IContextMenuParams parameters, CefMenuCommand commandId, CefEventFlags eventFlags)
        {
            if ((int)commandId == ShowDevTools)
            {
                browser.ShowDevTools();
            }
            if ((int)commandId == CloseDevTools)
            {
                browser.CloseDevTools();
            }

            if (commandId == CefMenuCommand.UserFirst)
            {
                CefSharp.PdfPrintSettings settings = new CefSharp.PdfPrintSettings();
                settings.BackgroundsEnabled = true;

                settings.MarginType = CefSharp.CefPdfPrintMarginType.Default;
                settings.Landscape = false;
                //settings.ScaleFactor = 100;

                OpenFileDialog dlg = new OpenFileDialog();
                dlg.CheckFileExists = false;
                dlg.ShowDialog();

                string filename = dlg.FileName;
                browser.GetHost().PrintToPdf(filename, settings, new OnPrint());


            }

            if (commandId == CefMenuCommand.UserFirst + 3)
            {
                OnReloadPageEvent();

                browserControl.GetBrowser().Reload();
            }


            return false;
        }

        void IContextMenuHandler.OnContextMenuDismissed(IWebBrowser browserControl, IBrowser browser, IFrame frame)
        {

        }

        bool IContextMenuHandler.RunContextMenu(IWebBrowser browserControl, IBrowser browser, IFrame frame, IContextMenuParams parameters, IMenuModel model, IRunContextMenuCallback callback)
        {
            return false;
        }
    }

    class PDFCallback : IPrintToPdfCallback
    {
        //
        public bool IsDisposed
        {
            get;
        }
               

        public void Dispose()
        {
            
        }

        public void OnPdfPrintFinished(string path, bool ok)
        {
            
        }
    }
}
