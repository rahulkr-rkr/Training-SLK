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

public partial class CustomerSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*
    protected void tbUsername_TextChanged(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["insdatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select count(c_id) from Users where username = @username",con);
            con.Open();
            //SqlDataReader dr=cmd.executescalar();
            Int32 count = (Int32)cmd.ExecuteScalar();
            if(count==0)
            {
                lblUsername.Text = "UserName is Available";
                this.lblUsername.ForeColor = Color.Red;
            }
            else
            {
                lblUsername.Text = "User Name is Already Exist";
                this.lblUsername.ForeColor = Color.Red;
            }
            con.Close();
        }

    }
    */
    
    

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        try
        {
            if (tbUsername.Text != "" && tbPassword.Text != "" && tbRetype.Text != "" && tbFirstname.Text != "" && tbLastname.Text != "" && tbEmail.Text != "" && tbPhonenumber.Text != "")
            {
                string cs = ConfigurationManager.ConnectionStrings["insdatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("insert into customer(c_username,c_password,c_email,c_phonenumber,c_firstname,c_lastname) values('" + tbUsername.Text + "','" + tbPassword.Text + "','" + tbEmail.Text + "','" + tbPhonenumber.Text  + "','" +  tbFirstname.Text + "','" + tbLastname.Text +  "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("CustomerLogin.aspx");
                }
            }
            else
            {
                lblMsg.Text = "<br/><b>All fields are Mandatory</b>";
            }
        }
        catch(Exception)
        {
            lblMsg.Text = "<br/><br/>UserName already Exists";
        }

    }
    
}