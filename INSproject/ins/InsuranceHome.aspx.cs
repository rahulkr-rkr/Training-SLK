using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InsuranceHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        if (DropDownList1.SelectedValue.Equals("Education"))
        {
            DropDownList2.Items.Add("Private colleges and universities");
            DropDownList2.Items.Add("Private secondary schools");
        }
        if (DropDownList1.SelectedValue.Equals("Health"))
        {
            DropDownList2.Items.Add("Hospitality");
            DropDownList2.Items.Add("surgery");
        }
        if (DropDownList1.SelectedValue.Equals("Motor"))
        {
            DropDownList2.Items.Add("Two wheelers");
            DropDownList2.Items.Add("Three wheelers");
            DropDownList2.Items.Add("Four wheelers");
        }
    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewPolicies.aspx");
    }
}