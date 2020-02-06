using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;
using System.Configuration;

public partial class AgentSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        try
        {
            if (tbUsername.Text != "" && tbPassword.Text != "" && tbRetype.Text != "" && tbFirstname.Text != "" && tbLastname.Text != "" && tbEmail.Text != "" && tbPhonenumber.Text != "")
            {
                string cs = ConfigurationManager.ConnectionStrings["insdatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("insert into agent(a_username,a_password,a_email,a_phonenumber,a_firstname,a_lastname) values('" + tbUsername.Text + "','" + tbPassword.Text + "','" + tbEmail.Text + "','" + tbPhonenumber.Text + "','" + tbFirstname.Text + "','" + tbLastname.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("AgentLogin.aspx");
                }
            }
            else
            {
                lblMsg.Text = "<br/><b>All fields are Mandatory</b>";
            }
        }
        catch (Exception)
        {
            lblMsg.Text = "<br/><br/>UserName already Exists";
        }

    }
}