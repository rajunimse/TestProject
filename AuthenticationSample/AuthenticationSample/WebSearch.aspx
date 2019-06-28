<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebSearch.aspx.cs" Inherits="AuthenticationSample.WebSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Web Search

            <table border="1">
                <tr>
                    <td>
                        Please enter URL:                        
                    </td>
                    <td>
                          <asp:TextBox Width="500" runat="server" ID="txtUrl" MaxLength="200" BackColor="Yellow"></asp:TextBox>
                        <br />                      
                        i.e. https://www.fda.gov/drugs/science-research-drugs/impact-story-developing-tools-evaluate-complex-drug-products-peptides
                        <br />https://espnic-online.org/Media/Files/Click-here-to-download-the-application-form2
                    </td>
                    <td>
                        <%--Download at specified path like C:\DEV\Cipla\POC\DownloadFiles--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        Please enter keywork for downloading:                        
                    </td>
                    <td>
                          <asp:TextBox Width="500" runat="server" ID="txtKeyword" MaxLength="200" BackColor="Yellow"></asp:TextBox>
                        <br />
                        i.e. Draft Guidance on Glatiramer Acetate Injection
                        <br />ESPNIC_Educational Grant Application_2016
                    </td>
                    <td>                        
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                          <asp:Button runat="server" ID="btnSearchAndDownload" Text="Search & Download" OnClick="btnSearchAndDownload_Click" />
                    </td>
                    <td>                        
                    </td>
                </tr>
            </table>

            <table>
                <tr>
                    <td>
                        <iframe width="600" height="371" seamless frameborder="0" scrolling="no" runat="server" id="iframeResult" ></iframe>
                    </td>
                </tr>
                <tr>
                    <td>
                        

                        <div runat="server" id="divDisplayResultString"></div>
                    </td>
                </tr>
            </table>
            

        </div>
    </form>
</body>
</html>
