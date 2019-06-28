using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using HtmlAgilityPack;
using System.IO;

namespace AuthenticationSample
{
    public partial class WebSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtKeyword.Text = string.Empty;
            //txtUrl.Text = string.Empty;
        }

        protected void btnSearchAndDownload_Click(object sender, EventArgs e)
        {
            var client = new WebClient();
            //var text = client.DownloadString("http://192.168.24.113:81/");
            string strPageContent = client.DownloadString(txtUrl.Text);

            iframeResult.Src = txtUrl.Text.TrimEnd();
            divDisplayResultString.InnerText = strPageContent;
            //divDisplayResultString.InnerText.Replace(txtKeyword.Text, "<span style='font-weight:bold; color: green;'>++txtKeyword.Text++</ span >");            

            if (divDisplayResultString.InnerText.Contains(txtKeyword.Text))
            {
                Response.Write("<script>alert('Keyword found!!!')</script>");
                FindLinkUrlAndDownloadFile();
            }
            else
                Response.Write("<script>alert('Keyword not found!!!')</script>");            

        }

        private void FindLinkUrlAndDownloadFile()
        {
            /// Using HtmlAgilityPack
            HtmlWeb hw = new HtmlWeb();
            HtmlDocument doc = hw.Load(txtUrl.Text);
            string urlForFile = string.Empty;

            foreach (HtmlNode link in doc.DocumentNode.SelectNodes("//a[@href]"))
            {
                if (link.InnerHtml.Contains(txtKeyword.Text))
                {
                    HtmlAttribute att = link.Attributes["href"];
                    if (att != null && !string.IsNullOrEmpty(att.Value))
                    {
                        urlForFile = att.Value;
                        break;
                    }
                }
            }

            if (!string.IsNullOrEmpty(urlForFile))
            {                                
                if (urlForFile.Contains("http:") || urlForFile.Contains("https:"))
                    DownloadFileFromURL(urlForFile);
                else
                {
                    //Response.Write("<script>alert('Problem in file url in given website')</script>");
                    ////If file available in host site 
                    Uri siteUrl = new Uri(txtUrl.Text);
                    string newUrlForFile = "http://"+ siteUrl.Host + "/" + urlForFile;
                    DownloadFileFromURL(newUrlForFile);
                }
            }
            else
            {
                Response.Write("<script>alert('Problem in file url in given website')</script>");
            }
        }

        private void DownloadFileFromURL(string strUrl)
        {             
            using (WebClient client = new WebClient())
            {
                if (string.IsNullOrEmpty(strUrl))
                {
                    Response.Write("<script>alert('Please enter file url')</script>");
                    return;
                }
                try
                {
                    Uri uri = new Uri(strUrl);
                    string filename = System.IO.Path.GetFileName(uri.LocalPath);

                    if (File.Exists(@"C:\DEV\Cipla\POC\DownloadFiles\" + filename))
                    {
                        File.Delete(@"C:\DEV\Cipla\POC\DownloadFiles\" + filename);
                        client.DownloadFile(strUrl, @"C:\DEV\Cipla\POC\DownloadFiles\" + filename);
                    }
                    else
                    {
                        client.DownloadFile(strUrl, @"C:\DEV\Cipla\POC\DownloadFiles\" + filename);
                    }

                    Response.Write("<script>alert('File downloaded successfully... Path: C:/DEV/Cipla/POC/DownloadFiles/" + filename + "')</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message + "')</script>");
                }
            }
        }
    }
}