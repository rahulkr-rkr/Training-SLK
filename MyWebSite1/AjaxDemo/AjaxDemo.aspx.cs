using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AjaxDemo_AjaxDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Page got refreshed at:" + DateTime.Now.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.Text = "clicked at:" + DateTime.Now.ToString();
    }
    

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Button2.Text = "clicked at:" + DateTime.Now.ToString();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label1.Text="Runs:" + DateTime.Now.ToString();
        Label2.Text = "Runs:" + DateTime.Now.ToString();
    }
}