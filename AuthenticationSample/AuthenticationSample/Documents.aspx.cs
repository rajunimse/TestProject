using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuthenticationSample
{
    public partial class Documents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkPdf_Click(object sender, EventArgs e)
        {
            string strUrl = txtUrl.Text.Trim();
            using (WebClient client = new WebClient())
            {
                if (string.IsNullOrEmpty(strUrl))
                {
                    Response.Write("<script>alert('Please enter file url')</script>");
                    return;
                }

                //strUrl = "http://unec.edu.az/application/uploads/2014/12";

                try
                {
                    Uri uri = new Uri(strUrl);                    
                    string filename = System.IO.Path.GetFileName(uri.LocalPath);

                    if (File.Exists(@"C:\DEV\Cipla\POC\DownloadFiles\"+ filename))
                    {
                        File.Delete(@"C:\DEV\Cipla\POC\DownloadFiles\"+ filename);
                        client.DownloadFile(strUrl, @"C:\DEV\Cipla\POC\DownloadFiles\"+ filename);
                    }
                    else
                    {
                        client.DownloadFile(strUrl, @"C:\DEV\Cipla\POC\DownloadFiles\"+ filename);
                    }

                    Response.Write("<script>alert('File downloaded successfully... Path: C:/DEV/Cipla/POC/DownloadFiles/"+ filename + "')</script>");
                    
                }
                catch(Exception ex)
                {

                }                
            }
        }
        protected void lnkPath_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=124907.pdf");
            Response.TransmitFile(@"C:\DEV\Cipla\POC\DownloadFiles\124907.pdf");
            Response.End();
        }
        protected void lnkDocPath_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=TestDocs.docx");
            Response.TransmitFile(@"C:\DEV\Cipla\POC\DownloadFiles\TestDocs.docx");
            Response.End();
        }

        //protected void lnkPdf_Click(object sender, EventArgs e)
        //{
        //    string strUrl = txtUrl.Text.Trim();
        //    using (WebClient client = new WebClient())
        //    {
        //        if (string.IsNullOrEmpty(strUrl))
        //        {
        //            Response.Write("<script>alert('Please enter file url')</script>");
        //            return;
        //        }

        //        //strUrl = "http://unec.edu.az/application/uploads/2014/12";

        //        try
        //        {
        //            Uri uri = new Uri(strUrl);
        //            if (uri.IsFile)
        //            {
        //                string filename = System.IO.Path.GetFileName(uri.LocalPath);

        //                if (File.Exists(@"C:\DEV\Cipla\POC\DownloadFiles\pdf-sample.pdf"))
        //                {
        //                    File.Delete(@"C:\DEV\Cipla\POC\DownloadFiles\pdf-sample.pdf");
        //                    client.DownloadFile(strUrl, @"C:\DEV\Cipla\POC\DownloadFiles\pdf-sample.pdf");
        //                    //client.DownloadFile("http://unec.edu.az/application/uploads/2014/12", @"C:\DEV\Cipla\POC\DownloadFiles\pdf-sample.pdf");
        //                }
        //                else
        //                {
        //                    client.DownloadFile(strUrl, @"C:\DEV\Cipla\POC\DownloadFiles\pdf-sample.pdf");
        //                    //client.DownloadFile("http://unec.edu.az/application/uploads/2014/12", @"C:\DEV\Cipla\POC\DownloadFiles\pdf-sample.pdf");
        //                }

        //                Response.Write("<script>alert('File downloaded successfully... Path: C:/DEV/Cipla/POC/DownloadFiles/pdf-sample.pdf')</script>");
        //            }
        //        }
        //        catch (Exception ex)
        //        {

        //        }
        //    }
        //}
    }
}