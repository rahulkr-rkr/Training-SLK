<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginform.aspx.cs" Inherits="loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        //used by server side button
        function validate()
        {
            var un = document.getElementById("tbUserID").value;
            var pw = document.getElementById("tbPassword").value;
            if((un.length < 5) || (pw.length < 3))
            {
                lblMsgClient.innerText = "User ID cannot be less than 5 Characters";
                return false;
            }
            //alert("hi");
        }

        //used by client side button(submit:convert)
        function CheckPositiveNumber()
        {
            var INRValue = document.getElementById("txtINR").value;
            if(INRValue <= 0)
            {
                lblMsgClient.innerText = "INR cannot be less than or equal to 0";
                return false;
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h1>Login Screen Demo(Server Side controls with javascript)</h1>
        <br />
        <asp:Label ID="lblUserID" runat="server" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbUserID" runat="server">nitin</asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password">rao</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" style="height:26px" OnClientClick="return validate();"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="tbReset" runat="server" Text="RESET" />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
    </div>

        <br />

        <asp:Label ID="lblMsgClient" runat="server"></asp:Label>

        <div style="border:medium solid blue;">

            <h2>Currency Converter(client side controls with javascript)</h2>
            <br />
            INR
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="txtINR" name="txtINR" type="text" value="80" />
            <br />
            <br />
           USD<span id="lblMsgUSD"><%=iUSDServerValue%></span><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Submit1" type="submit" value="Convert" onclick="return CheckPositiveNumber();" />

        </div>
    </form>
</body>
</html>
