using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SimpleNavigation_navigationform1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Sender send Details using:" + Request.HttpMethod.ToString());
        if(Request.QueryString.Count > 0)
        {
            Response.Write("<br/>get-query string t1:" + Request.QueryString["t1"].ToString());
        }
        else if(Request.Form.Count > 0)
        {
            Response.Write("<br/>Post t1:" + Request.Form["t1"].ToString());
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}