using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;

public partial class AgentLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgentSignUp.aspx");
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["insdatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("select COUNT(*)FROM agent WHERE a_username='" + tbUsername.Text + "' and a_password='" + tbPassword.Text + "'");
            con.Open();
            cmd.Connection = con;
            int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
            if (OBJ > 0)
            {
                Session["a_name"] = tbUsername.Text;
                Response.Redirect("AgentPortal.aspx");
                //Session["c_id"] = new SqlCommand("select c_id from customer where c_username='" + tbUsername.ToString() + "'");
                //SqlCommand cmd1 = new SqlCommand("select c_id from customer where c_username='" + tbUsername.Text  + "'");
                //cmd1.Connection.Open();
                //Session["c_id"]=cmd1.ExecuteNonQuery();
                //cmd1.Connection.Close();

            }
            else
            {
                lblUsername.Text = "Invalid username or password";
                this.lblUsername.ForeColor = Color.Red;
            }
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("InsuranceHome.aspx");
    }
}