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

public partial class CustomerClaim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string cno = "select * from customer where c_username='" + Session["name"] + "'";
        SqlDataAdapter adaptor = new SqlDataAdapter(cno, con);
        DataSet myds = new DataSet();
        adaptor.Fill(myds, "customer");
        int count = myds.Tables["customer"].Rows.Count;
        if (count > 0)
        {
            tbName.Text = myds.Tables["customer"].Rows[0]["c_firstname"].ToString();
            Session["c_id"] = myds.Tables["customer"].Rows[0]["c_id"].ToString();
        }
        string val = "select * from policy where c_id='" + Session["c_id"] + "'";
        SqlDataAdapter adaptor1 = new SqlDataAdapter(val, con);
        DataSet myds1 = new DataSet();
        adaptor1.Fill(myds1, "policy");
        int count1 = myds1.Tables["policy"].Rows.Count;
        if (count1 > 0)
        {
            Session["p_id"] = myds1.Tables["policy"].Rows[0]["p_id"].ToString();
        }
        lblMsg.Text = Session["p_id"].ToString();
    }

    protected void btnClaim_Click(object sender, EventArgs e)
    {
        decimal a;
        decimal b;
        decimal c;
        decimal d;
        a = Convert.ToDecimal(tbClaimamount.Text);
        b = Convert.ToDecimal(tbPaidamount.Text);
        c = a / b;
        if (c > b)
        {
            d = a;
            tbClaim.Text = (d.ToString().TrimEnd());
        }
        else if (c < b)
        {
            d = (a / 2) + (((a * 40) / 100));
            tbClaim.Text = (d.ToString().TrimEnd());
        }
    }

    protected void btnfetch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string cl = "select * from policy where p_id='" + tbPolicyid.Text + "'";
        SqlDataAdapter adaptor = new SqlDataAdapter(cl, con);
        DataSet myds = new DataSet();
        adaptor.Fill(myds, "policy");
        int count = myds.Tables["policy"].Rows.Count;
        if (count > 0)
        {
            //tbName.Text = myds.Tables["policy"].Rows[0]["c_id"].ToString();
            tbInstitution.Text = myds.Tables["policy"].Rows[0]["p_institutionname"].ToString();
            tbClaimamount.Text = myds.Tables["policy"].Rows[0]["total_amount"].ToString();
            tbPaidamount.Text = myds.Tables["policy"].Rows[0]["p_insureamount"].ToString();
        }
    }

    protected void btnClaimPolicy_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        SqlCommand cmd = new SqlCommand("insert into claim(name,p_id,institutionname,claimtype,insure_amount,claimable_amount,claim_date) values('" + tbName.Text + "','" + tbPolicyid.Text + "','" + tbInstitution.Text + "','" + ddlClaimtype.Text + "','" + tbClaimamount.Text + "','" + tbClaim.Text + "','" + tbDate.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        lblclaim.Text = "<style='color:white'>Are You Sure?";
    }

    protected void btnProceed_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["insdatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            con.Open();
            using (SqlCommand cmd2 = new SqlCommand("update policy set claim_status= @yr where p_id= @p_id"))
            {
                cmd2.Connection = con;
                cmd2.Parameters.AddWithValue("@yr", "Claimed");
                //cmd.Parameters.AddWithValue("@amt", tbInsureAmount2.Text);
                cmd2.Parameters.AddWithValue("@p_id", Session["p_id"]);
                cmd2.ExecuteNonQuery();
                lblfinal.Text = "<style='color:white'>Claim SUCCESS!!";
            }
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerPortal.aspx");
    }

    protected void btncheck_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string cl = "select * from policy where p_id='" + tbPolicyid.Text + "'";
        SqlDataAdapter adaptor = new SqlDataAdapter(cl, con);
        DataSet myds = new DataSet();
        adaptor.Fill(myds, "policy");
        int count = myds.Tables["policy"].Rows.Count;
        if (count > 0)
        {
            if ((myds.Tables["policy"].Rows[0]["claim_status"].ToString()) == "Claimed")
                lblcheck.Text = "Claimed";
            else 
                lblcheck.Text = "Active";


        }
    }
}