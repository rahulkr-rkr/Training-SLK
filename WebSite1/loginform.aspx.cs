using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if ((tbUsername.Text.Equals("rahul")) && (tbPassword.Text.Equals("rao")))
            lblMsg.Text = "Valid User";
        else
            lblMsg.Text = "Invalid User";
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        tbUsername.Text = "rahul";
        tbPassword.Text = "";
    }
}