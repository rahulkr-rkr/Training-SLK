using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginform : System.Web.UI.Page
{
    public int iUSDServerValue = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(DateTime.Now.ToString());
        Response.Write("<br/>");
        Response.Write(Request.HttpMethod);
        Response.Write("<br/>");
        Response.Write(Request["txtINR"]);

        string sINR = Request["txtINR"];
        
        if(sINR != null)
        {
            int INR = int.Parse(Request["txtINR"]);
            iUSDServerValue = INR / 80;

            //Response.Write("USD:" + iUSDServerValue);
            //lblMsgUSD.innertext = USD.ToString();
        }              
    }

    protected void btnLogin_Click(object sender,EventArgs e)
    {
        if ((tbUserID.Text.Equals("nitin")) && (tbPassword.Text.Equals("rao")))
            lblMsg.Text = "valied User";
        else
            lblMsg.Text = "invalid user";
    }
}