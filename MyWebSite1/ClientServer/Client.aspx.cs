using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClientServer_Client : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Computer cObj = new Computer();
        lblMsg.Text = cObj.Sum(int.Parse(TextBox1.Text), int.Parse(TextBox2.Text)).ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
       
    }
}