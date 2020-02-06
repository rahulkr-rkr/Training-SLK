using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SimpleNavigation_navigationform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(t1.Text.Trim().Equals("Ravi"))
        {
            Response.Redirect("navigationform1.aspx?t1=" + "ravi Raj");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("navigationform1.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //postbackurl
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //some code check what type of user is ravi
        HttpContext.Current.Items.Add("UT", "admin");
        Server.Transfer("navigationform1.aspx");
    }
}