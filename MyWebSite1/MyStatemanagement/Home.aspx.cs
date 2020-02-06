using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyStatemanagement_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Current user name:" + Session["UserName"].ToString());
        Response.Write("<br/>Active Users:" + Application["ActiveUserCount"].ToString());
        Response.Write("<br/>Session ID:" + Session.SessionID.ToString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //go to server
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //session time out
        Session.Timeout = 1;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //logout
        Session.Abandon();
        Response.Redirect("ThankYou.html");
    }
}