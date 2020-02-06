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

public partial class CustomerPayment : System.Web.UI.Page
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
            tbInsureamount.Text = myds1.Tables["policy"].Rows[0]["p_insureamount"].ToString();
            tbInsuretime.Text = myds1.Tables["policy"].Rows[0]["p_insuretime"].ToString();
            if((myds1.Tables["policy"].Rows[0]["p_premium"].ToString())=="Premium1")
            {
                tbPremiumrate.Text = "5";
            }
            else if ((myds1.Tables["policy"].Rows[0]["p_premium"].ToString()) == "Premium2")
            {
                tbPremiumrate.Text = "7";
            }
        }

    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        decimal a;
        decimal b;
        decimal c;
        decimal output;
        a = Convert.ToDecimal(tbInsureamount.Text);
        b = Convert.ToDecimal(tbInsuretime.Text);
        c = Convert.ToDecimal(tbPremiumrate.Text);
        output = (a / b) - (((a / b) * c) / 100);
        tbPayment.Text = (output.ToString().TrimEnd());
    }
    protected void BtnPay_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string val2 = "select * from policy where c_id='" + Session["c_id"] + "'";
        SqlDataAdapter adaptor1 = new SqlDataAdapter(val2, con);
        DataSet myds1 = new DataSet();
        adaptor1.Fill(myds1, "policy");
        int count1 = myds1.Tables["policy"].Rows.Count;
        if (count1 > 0)
        {
            //tbName.Text = myds.Tables["customer"].Rows[0]["c_firstname"].ToString();
            Session["p_id"] = myds1.Tables["policy"].Rows[0]["p_id"].ToString();
        }
        SqlCommand cmd = new SqlCommand("insert into payment(c_name,acc_no,bank,isfc,paydate,payment,c_id,p_id) values('" + tbName.Text + "','" + tbACCNo.Text + "','" + tbBank.Text + "','" + tbISFCCode.Text + "','" + tbDate.Text + "','" + tbPayment.Text + "','" + Session["c_id"] + "','" + Session["p_id"]  + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("CustomerPayment.aspx");
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        decimal update;
        update = Convert.ToDecimal(tbInsureamount.Text) - Convert.ToDecimal(tbPayment.Text.TrimEnd());
        tbInsureAmount2.Text = (update.ToString());
        float time;
        time = Convert.ToInt32(tbInsuretime.Text) - 1;
        tbInsureTime2.Text = (time.ToString());
    }

    protected void btnNewupdate_Click(object sender, EventArgs e)
    {
        
        string cs = ConfigurationManager.ConnectionStrings["insdatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {

            string val2 = "select * from policy where c_id='" + Session["c_id"] + "'";
            SqlDataAdapter adaptor1 = new SqlDataAdapter(val2, con);
            DataSet myds1 = new DataSet();
            adaptor1.Fill(myds1, "policy");
            int count1 = myds1.Tables["policy"].Rows.Count;
            if (count1 > 0)
            {
                //tbName.Text = myds.Tables["customer"].Rows[0]["c_firstname"].ToString();
                Session["p_id"] = myds1.Tables["policy"].Rows[0]["p_id"].ToString();
            }
            con.Open();
            using (SqlCommand cmd = new SqlCommand("update policy set p_insuretime= @yr , p_insureamount= @amt where p_id= @p_id"))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@yr", tbInsureTime2.Text);
                cmd.Parameters.AddWithValue("@amt", tbInsureAmount2.Text);
                cmd.Parameters.AddWithValue("@p_id",Session["p_id"]);
                cmd.ExecuteNonQuery();
            }
            string valpay = "select * from policy where p_id='" + Session["p_id"] + "'";
            SqlDataAdapter adaptor2 = new SqlDataAdapter(valpay, con);
            DataSet myds2 = new DataSet();
            adaptor2.Fill(myds2, "policy");
            int count2 = myds2.Tables["policy"].Rows.Count;
            if (count2 > 0)
            {
                tbInsureamount.Text = myds2.Tables["policy"].Rows[0]["p_insureamount"].ToString();
                tbInsuretime.Text = myds2.Tables["policy"].Rows[0]["p_insuretime"].ToString();
                
            }

        }

    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerPortal.aspx");
    }

    protected void btnpaydetails_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        string payment = "select * from payment where c_id='" + Session["c_id"] + "'";
        SqlDataAdapter adaptorpay = new SqlDataAdapter(payment, con);
        DataSet mydsp = new DataSet();
        adaptorpay.Fill(mydsp, "payment");
        int countp = mydsp.Tables["payment"].Rows.Count;
        if (countp > 0)
        {
            GridViewpay.DataSource = mydsp;
            GridViewpay.DataMember = "payment";
            GridViewpay.DataBind();
        }
    }
}