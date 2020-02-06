using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class ClientServer_WcfClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Session["escObj"] = new EmployeeServiceClient();
            lblHeader.Text = (Session["escObj"] as EmployeeServiceClient).GetServiceProvider();
        }
    }

    protected void btnGetHra_Click(object sender, EventArgs e)
    {
        EmployeeServiceClient escObj = Session["escObj"] as EmployeeServiceClient;
        lblMsg.Text = escObj.GetHra(int.Parse(txtBasic.Text)).ToString();
    }



    protected void btnSave_Click(object sender, EventArgs e)
    {
        EmployeeServiceClient escObj = Session["escObj"] as EmployeeServiceClient;
        try
        {
            lblMsg.Text = "save status:" + escObj.Save(new Employee() { No = int.Parse(txtEmpNo.Text), Name = txtEmpName.Text, Age = int.Parse(txtEmpAge.Text) });

        }
        catch(Exception eObj)
        {
            lblMsg.Text = eObj.Message;
            Session["escObj"] = new EmployeeServiceClient();
        }
    }


    protected void btnGet_Click(object sender, EventArgs e)
    {
        EmployeeServiceClient escObj = Session["escObj"] as EmployeeServiceClient;
        Employee eObj = escObj.Get(int.Parse(txtEmpNo.Text));
        lblMsg.Text = "";
        if(eObj!=null)
        {
            txtEmpName.Text = eObj.Name;
            //txtEmpAge.Text = eObj.Age;
        }
    }
}