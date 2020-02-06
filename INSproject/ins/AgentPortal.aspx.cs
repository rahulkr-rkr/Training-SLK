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

public partial class AgentPortal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a_name"]==null)
        {
            Response.Redirect("InsuranceHome.aspx");
        }
        else
        {
            lblWelcome.Text = Session["a_name"].ToString();
        }
        
    }

    protected void btnViewCus_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string cus = "select * from customer";
        SqlDataAdapter adaptor = new SqlDataAdapter(cus, con);
        DataSet myds = new DataSet();
        adaptor.Fill(myds, "customer");
        int count = myds.Tables["customer"].Rows.Count;
        if (count > 0)
        {
            GridViewCus.DataSource = myds;
            GridViewCus.DataMember = "customer";
            GridViewCus.DataBind();
        }

    }



    protected void btnViewMsg_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string msg = "select * from contactus";
        SqlDataAdapter adaptor = new SqlDataAdapter(msg, con);
        DataSet myds = new DataSet();
        adaptor.Fill(myds, "contactus");
        int count = myds.Tables["contactus"].Rows.Count;
        if (count > 0)
        {
            GridViewMsg.DataSource = myds;
            GridViewMsg.DataMember = "contactus";
            GridViewMsg.DataBind();
        }
    }

    protected void btnReply_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string cl = "select * from contactus where Name='" + tbName.Text + "'";
        SqlDataAdapter adaptor = new SqlDataAdapter(cl, con);
        DataSet myds = new DataSet();
        adaptor.Fill(myds, "contactus");
        int count = myds.Tables["contactus"].Rows.Count;
        if (count > 0)
        {

            tbMsg.Text = myds.Tables["contactus"].Rows[0]["Message"].ToString();

        }
    }

    protected void btnReplyUpdate_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["insdatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand("update contactus set reply= @reply where Name= @name"))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@reply", tbReply.Text);
                cmd.Parameters.AddWithValue("@name", tbName.Text);
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Reply Sent";
            }
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["a_name"] = null; 
        Response.Redirect("AgentLogin.aspx");
    }
}