using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyStatemanagement_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Equals("nitin"))
            Session["UserName"] = "nitin rao";
        else if (TextBox1.Text.Trim().Equals("tanvir"))
            Session["UserName"] = "tanvir mukit";
        else
        {
            Response.Write("<br/>Invalid User id");
            return;

        }
        Response.Redirect("Home.aspx");
    }
}