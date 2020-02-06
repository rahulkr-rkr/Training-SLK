using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyPostBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Round trip at:" + DateTime.Now.ToString());
        //for blue div tag
        if(!IsPostBack)
        {
            TextBox1.Text = "10";
        }
    }
    protected void Button2_click(object sender,EventArgs e)
    {
        TextBox1.Text = (int.Parse(TextBox1.Text) + 1).ToString();
    }
}