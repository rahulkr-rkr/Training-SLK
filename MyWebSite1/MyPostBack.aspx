<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyPostBack.aspx.cs" Inherits="MyPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border:solid;border-color:blue;">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Increase" onclick="Button2_click"/>
        <br />
        <br />
        <asp:Label ID="lblMsg2" runat="server"></asp:Label>
    </div>
    </form>
    </body>
</html>
