using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class ADO_MyAdo : System.Web.UI.Page
{
    //connection object qualifies to be a application object
    SqlConnection mycon;
    SqlDataAdapter myadaptor;
    SqlCommand mycmd;
    DataSet myds;
    static int clickStatus = 0;  //avoid using static variable(use session variable)
    string eno;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //to query for records
        int rc;
        mycon = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=AdventureWorks");
        eno = "select * from employee where empno='" + TextBox1.Text + "'";
        myadaptor = new SqlDataAdapter(eno, mycon);
        myds = new DataSet();
        myadaptor.Fill(myds, "employee");
        rc = myds.Tables["employee"].Rows.Count;
        lblMsg.Text = rc.ToString();

        if (rc > 0)
        {
            TextBox1.Text = myds.Tables["employee"].Rows[0][0].ToString();
            TextBox2.Text = myds.Tables["employee"].Rows[0][1].ToString();
            TextBox3.Text = myds.Tables["employee"].Rows[0][2].ToString();
            TextBox4.Text = myds.Tables["employee"].Rows[0]["age"].ToString();
            TextBox5.Text = myds.Tables["employee"].Rows[0]["pfno"].ToString();
            //will be access denied
            //myds.WriteXml(Server.MapPath(".") + "/Employee.xml");
        }
        else
        {
            lblMsg.Text = "Record Not found";
            TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //to add a record
        if (clickStatus == 0)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            lblMsg.Text = "";
            clickStatus = 1;
            Button1.Text = "Save";
        }
        else
        {
            //could use this for integrated security(windows)
            //Data Source=localhost;Initial Catalog = AdventureWorks;Integrated Security=True
            mycon = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=AdventureWorks");
            eno = "insert into employee(empno,empname,address,age,pfno)values(@en,@ena,@add,@age,@pfno)";

            mycmd = new SqlCommand(eno, mycon);

            mycmd.Parameters.Add("@en", SqlDbType.NChar, 4);
            mycmd.Parameters.Add("@ena", SqlDbType.NChar, 20);
            mycmd.Parameters.Add("@add", SqlDbType.NChar, 40);
            mycmd.Parameters.Add("@age", SqlDbType.Int);
            mycmd.Parameters.Add("@pfno", SqlDbType.NChar, 4);

            mycmd.Parameters[0].Value = TextBox1.Text;
            mycmd.Parameters[1].Value = TextBox2.Text;
            mycmd.Parameters[2].Value = TextBox3.Text;
            mycmd.Parameters[3].Value = int.Parse(TextBox4.Text);
            mycmd.Parameters[4].Value = TextBox5.Text;

            try
            {
                mycmd.Connection.Open();
                mycmd.ExecuteNonQuery();
                mycmd.Connection.Close();
            }
            catch (Exception exp)
            {
                lblMsg.Text = "Error in inserting the record because" + exp.Message.ToString();
                return;
            }
            lblMsg.Text = "Record added Successfully";
            clickStatus = 0;
            Button1.Text = "Add";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //for updating records
        mycon = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=AdventureWorks");
        mycmd = new SqlCommand("update employee set empname=@ena,address=@add,age=@age,pfno=@pfno where empno=@en", mycon);


        mycmd.Parameters.Add("@ena", SqlDbType.NChar, 20);
        mycmd.Parameters.Add("@add", SqlDbType.NChar, 40);
        mycmd.Parameters.Add("@en", SqlDbType.NChar, 4);
        mycmd.Parameters.Add("@age", SqlDbType.Int);
        mycmd.Parameters.Add("@pfno", SqlDbType.NChar, 4);

        mycmd.Parameters[0].Value = TextBox2.Text;
        mycmd.Parameters[1].Value = TextBox3.Text;
        mycmd.Parameters[2].Value = TextBox1.Text;
        mycmd.Parameters[3].Value = TextBox4.Text;
        mycmd.Parameters[4].Value = TextBox5.Text;

        try
        {
            mycmd.Connection.Open();
            if (mycmd.ExecuteNonQuery() == 0)
                lblMsg.Text = "Record not Found";
            else
            {
                lblMsg.Text = "Record Updated";
                
            }
            mycmd.Connection.Close();
        }
        catch
        {
            lblMsg.Text = "Error in Updating Records";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //for deleting records
        mycon = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=AdventureWorks");
        mycmd = new SqlCommand("delete from employee where empno=@en", mycon);

        mycmd.Parameters.Add("@en", SqlDbType.NVarChar, 4);
        mycmd.Parameters[0].Value = TextBox1.Text;

        try
        {
            mycmd.Connection.Open();
            if (mycmd.ExecuteNonQuery() == 0)
            {
                lblMsg.Text = "Record could not be deleted ot not found";
                mycmd.Connection.Close();
            }
            else
            {
                lblMsg.Text = "Record deleted";
                mycmd.Connection.Close();
            }
        }
        catch
        {
            lblMsg.Text = "Error in deleting the record";
            return;
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        int rc;
        string sQuery;
        mycon = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=AdventureWorks");
        sQuery = "getEmpDetails";
        mycmd = new SqlCommand();
        mycmd.CommandType = CommandType.StoredProcedure;
        mycmd.CommandText = sQuery;
        mycmd.Connection = mycon;

        //parameter names need to match the proc
        //are use the column name to link
        SqlParameter en;
        en = new SqlParameter("@eno", SqlDbType.Char, 5, "eno");
        en.Direction = ParameterDirection.Input;
        en.Value = TextBox1.Text.ToString();
        mycmd.Parameters.Add(en);

        mycmd.Parameters.Add("@ena", SqlDbType.NVarChar, 20, "ena");
        mycmd.Parameters["@ena"].Direction = ParameterDirection.Output;

        mycmd.Parameters.Add("@add", SqlDbType.NVarChar, 40, "add");
        mycmd.Parameters["@add"].Direction = ParameterDirection.Output;

        mycmd.Parameters.Add("@age", SqlDbType.Int);
        mycmd.Parameters["@age"].Direction = ParameterDirection.Output;
        mycmd.Parameters["@age"].SourceColumn = "age";

        mycmd.Parameters.Add("@pfno", SqlDbType.NChar, 4, "pfno");
        mycmd.Parameters["@pfno"].Direction = ParameterDirection.Output;

        mycon.Open();
        mycmd.ExecuteNonQuery();

        if(mycmd.Parameters[2].Value.ToString()!="")
        {
            TextBox2.Text = mycmd.Parameters["@ena"].Value.ToString();
            TextBox3.Text = mycmd.Parameters["@add"].Value.ToString();
            TextBox4.Text = mycmd.Parameters["@age"].Value.ToString();
            TextBox5.Text = mycmd.Parameters["@pfno"].Value.ToString();
        }
        else
        {
            lblMsg.Text = "no records";
            TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
            mycon.Close();
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        mycon = new SqlConnection("server=WSLKCMP2FTR2-12\\SQLEXPRESS;user id=sa;password=password@1;database=AdventureWorks");
        eno = "select * from employee";
        myadaptor = new SqlDataAdapter(eno, mycon);
        myds = new DataSet();
        myadaptor.Fill(myds, "employee");
        lblMsg.Text = myds.Tables["employee"].Rows.Count.ToString();

        myds.Tables["employee"].DefaultView.Sort = "address desc";
        myds.Tables["employee"].DefaultView.RowFilter = "age < 25";

        //without filter and sort
        GridView1.DataSource = myds;
        //with filter and sort
        //GridView1.DataSource = myds.Tables["employee"].DefaultView;
        GridView1.DataMember = "employee";
        GridView1.DataBind();
    }
}