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

public partial class CustomerView : System.Web.UI.Page
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
        int count1= myds1.Tables["policy"].Rows.Count;
        if (count1 > 0)
        {
            tbInstitutionname.Text = myds1.Tables["policy"].Rows[0]["p_institutionname"].ToString();
            tbSpecialization.Text = myds1.Tables["policy"].Rows[0]["p_specialization"].ToString();
            tbPolicytype.Text = myds1.Tables["policy"].Rows[0]["p_policytype"].ToString();
            tbPremium.Text = myds1.Tables["policy"].Rows[0]["p_premium"].ToString();
            tbinsamount.Text=myds1.Tables["policy"].Rows[0]["total_amount"].ToString();
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("CustomerPortal.aspx");
    }
}