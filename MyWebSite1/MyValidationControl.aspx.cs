using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyValidationControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if(args.Value.Contains("a")||args.Value.Contains("e")||args.Value.Contains("i")|| args.Value.Contains("o")|| args.Value.Contains("u"))
        {
            args.IsValid = false;

        }
        else
        {
            args.IsValid = true;
        }

    }
}