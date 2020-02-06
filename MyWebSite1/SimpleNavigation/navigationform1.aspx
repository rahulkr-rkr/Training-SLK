<%@ Page Language="C#" AutoEventWireup="true" CodeFile="navigationform1.aspx.cs" Inherits="SimpleNavigation_navigationform1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <br />
    <a href="navigationform.aspx">reload to same page</a><br />
        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
    </div>
        <asp:Button ID="btnLogin" runat="server" Text="Button" />
    </form>
</body>
</html>
