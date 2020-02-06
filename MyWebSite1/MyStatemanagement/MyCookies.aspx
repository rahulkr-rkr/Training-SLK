<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyCookies.aspx.cs" Inherits="MyStatemanagement_MyCookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Demo for Reading and Writing Code</h1>

        <br />
        <asp:TextBox ID="TextBox1" runat="server">default</asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Write To Cookie" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Read From Cookie" />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>

    </div>
    </form>
</body>
</html>
