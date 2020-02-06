using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyNewState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Button1.Text = DateTime.Now.ToString();
            Button2.Text = DateTime.Now.ToString();

            TextBox1.Text = DateTime.Now.ToString();
            TextBox2.Text = DateTime.Now.ToString();

            Label1.Text = DateTime.Now.ToString();
            Label2.Text = DateTime.Now.ToString();
        }
    }

    protected void Button1_click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_click(object sender, EventArgs e)
    {

    }

}