using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write(DropDownList1.SelectedValue);
        DropDownList2.Items.Clear();
        if(DropDownList1.SelectedValue.Equals("Banglore"))
        {
            DropDownList2.Items.Add("Whitefield");
            DropDownList2.Items.Add("HSR Layout");
            DropDownList2.Items.Add("Dairy Circle");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/UploadedFiles/" + FileUpload1.FileName);
            lblMsg.Text = FileUpload1.FileName + "upload done";
        }
        else
        {
            lblMsg.Text = "Could not upload" + FileUpload1.FileName;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string sVal;

        sVal = "<hr/>ID:" + TextBox1.Text;
        sVal += "</br>NAME:" + TextBox2.Text;
        sVal += "<br/>AGE:" + TextBox3.Text;
        sVal += "<br/>GENDER:" + ((RadioButton1.Checked) ? "Male" : "Female").ToString();
        sVal += "<br/>CITY:" + DropDownList1.SelectedItem.Text;
        sVal += "<br/>LANGUAGE:" + ListBox1.SelectedItem.Text;
        sVal += "<br/>TECHNOLOGIES:" + (CheckBox1.Checked ? "DotNet" : "").ToString();
        sVal+= (CheckBox2.Checked ? "&nbsp Java" : "").ToString();

        lblMsg.Text = sVal;
    }
}