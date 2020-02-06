using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyReusableCtrls_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.BackColor = System.Drawing.Color.Aqua;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        lblMsg.Text = TextBox1.Text + "Searcging.....";
    }

    public string SearchResults
    {
        get { return lblMsg.Text; }
    }

    public System.Drawing.Color SearchButtonBackColor
    {
        set { Button1.BackColor = value; }
    }
}