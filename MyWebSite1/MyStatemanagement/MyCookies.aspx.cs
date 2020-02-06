using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyStatemanagement_MyCookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //write to cookie
        HttpCookie hc;
        hc = new HttpCookie("ck1", TextBox1.Text.ToString());
        hc.Expires = DateTime.Parse("12/12/2015");
        Response.Cookies.Add(hc);
        Response.Write("Cookie ck1 saved");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //Read from cookie
        Response.Write(Request.Cookies.Get("ck1").Value);
    }
}