using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.Data;
using System.Data;
using System.Data.SqlClient;



public partial class CustomerPortal : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlDataAdapter myadaptor;
    SqlCommand mycmd;
    DataSet myds;
    static int clickStatus = 0;  //avoid using static variable(use session variable)
    string eno;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("InsuranceHome.aspx");
        }
        else
        {
            lblWelcome.Text = Session["name"].ToString();
        }

    }



    protected void Button6_Click(object sender, EventArgs e)
    {
        mycon = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=insdatabase");
        eno = "select * from customer where c_username='"+Session["name"] + "'";
        myadaptor = new SqlDataAdapter(eno, mycon);
        myds = new DataSet();
        myadaptor.Fill(myds, "customer");
        //lblMsg.Text = myds.Tables["customer"].Rows.Count.ToString();

        //myds.Tables["employee"].DefaultView.Sort = "address desc";
        //myds.Tables["employee"].DefaultView.RowFilter = "age < 25";

        //without filter and sort
        GridView1.DataSource = myds;
        //with filter and sort
        //GridView1.DataSource = myds.Tables["employee"].DefaultView;
        GridView1.DataMember = "customer";
        GridView1.DataBind();
        
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Session["c_id"] = null;
        Response.Redirect("CustomerLogin.aspx");
    }
}
