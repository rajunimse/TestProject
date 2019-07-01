using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuthenticationSample
{
    public partial class Login : System.Web.UI.Page
    {
        // added comments
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // check pull request build
        protected void Login_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(UserName.Text, UserPass.Text))
            {
                Session.Add("userId", UserName.Text);
                FormsAuthentication.RedirectFromLoginPage(UserName.Text, chkboxPersist.Checked);

                Session.Add("userId", UserName.Text);
            }
            else
            {
                Msg.Text = "Invalid User Name and/or Password";
            }
        }
    }
}