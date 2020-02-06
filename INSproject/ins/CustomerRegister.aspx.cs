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

public partial class CustomerRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblWelcome.Text = Session["name"].ToString();
    }

    protected void ddlSpecialization_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlPolicytype.Items.Clear();
       
        if (ddlSpecialization.SelectedValue.Equals("Private Colleges And Universities"))
        {
            ddlPolicytype.Items.Add("Property Assist");
            ddlPolicytype.Items.Add("Staff Maintainace Assit");
            ddlPolicytype.Items.Add("Student Maintainace Assit");
        }
        if (ddlSpecialization.SelectedValue.Equals("Private Secondary Schools"))
        {
            ddlPolicytype.Items.Add("Property Assist");
            ddlPolicytype.Items.Add("Staff Maintainace Assit");
            ddlPolicytype.Items.Add("Student Maintainace Assit");
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        /*
            if (tbInstitution.Text != "" && ddlRole.Text != "" && ddlState.Text != "" && ddlSpecialization.Text != "" && ddlPolicytype.Text != "" && rblPremium.SelectedValue != "")
            {
                string cs = ConfigurationManager.ConnectionStrings["insdatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                SqlCommand cmd = new SqlCommand("insert into policy(p_institutionname,p_role,p_state,p_specialization,p_policytype,p_premium,c_id) values('" + tbInstitution.Text + "','" + ddlRole.Text + "','" + ddlState.Text + "','" + ddlSpecialization.Text + "','" + ddlPolicytype.Text + "','" + rblPremium.Text + "','" + ("select c.c_id from customer c where c.c_username='" + Session["name"]+"'") + "')" ,con);
               
                con.Open();
                    
                    cmd.ExecuteNonQuery();
                    
                    Response.Redirect("CustomerLogin.aspx");
                }
            }
            */
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string cno = "select c_id,c_username from customer where c_username='" + Session["name"] + "'";
        SqlDataAdapter adaptor = new SqlDataAdapter(cno, con);
        DataSet myds = new DataSet();
        adaptor.Fill(myds, "customer");
        int count = myds.Tables["customer"].Rows.Count;
        if (count > 0)
        {
            Session["c_id"]= myds.Tables["customer"].Rows[0][0].ToString();
        }
        else
        {
            lblMsg.Text = "Record Not found";
        }
          SqlCommand cmd = new SqlCommand("insert into policy(p_institutionname,p_role,p_state,p_specialization,p_policytype,p_insureamount,p_insuretime,p_premium,c_id,total_amount) values('" + tbInstitution.Text + "','" + ddlRole.Text + "','" + ddlState.Text + "','" + ddlSpecialization.Text + "','" + ddlPolicytype.Text + "','"+tbinsamount.Text +"','" + ddlinstime.Text + "','" + rblPremium.Text + "','" + Session["c_id"] + "','" + tbinsamount.Text + "')",con);
          con.Open();
          cmd.ExecuteNonQuery();
          
          Response.Redirect("CustomerPortal.aspx");
    }

    
}