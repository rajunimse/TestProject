<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Documents.aspx.cs" Inherits="AuthenticationSample.Documents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h3>List of Documents</h3>

            <table border="1">
                <tr>
                    <td>
                        Please enter URL below to download file:<br />
                        <asp:TextBox Width="500" runat="server" ID="txtUrl" MaxLength="200" BackColor="Yellow"></asp:TextBox>
                    </td>
                    <td>
                          <asp:LinkButton runat="server" Text="Click here to download file" ID="lnkPdf" OnClick="lnkPdf_Click" ></asp:LinkButton>
                    </td>
                    <td>
                        Download at specified path like C:\DEV\Cipla\POC\DownloadFiles
                    </td>
                </tr>
                 <tr>
                    <td>Sample URLs</td>
                    <td colspan="2">
                        https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf <br />
                        http://unec.edu.az/application/uploads/2014/12/pdf-sample.pdf <br />
                        https://calibre-ebook.com/downloads/demos/demo.docx 
                    </td>
                </tr>
                <tr>
                    <td>
                        Download file from application directory
                    </td>
                    <td>
                          <asp:LinkButton runat="server" Text="PDF File" ID="lnkPath" OnClick="lnkPath_Click"></asp:LinkButton>
                        <br />
                          <asp:LinkButton runat="server" Text="Microsoft Word Document" ID="lnkDocPath" OnClick="lnkDocPath_Click"></asp:LinkButton>
                    </td>
                    <td>
                        By default saved in system Downloads folder
                    </td>
                </tr>               
                
            </table>


        </div>
    </form>
</body>
</html>
