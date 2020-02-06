<%@ Page Language="C#" AutoEventWireup="true" CodeFile="navigationform.aspx.cs" Inherits="SimpleNavigation_navigationform" %>

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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="By Redirect" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="S Transfer" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="PostBack URL" OnClick="Button3_Click" PostBackUrl="~/SimpleNavigation/navigationform1.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="S Transfer with Additional Data" OnClick="Button4_Click" />
        <br />
        <br />
        <br />
    
        <a href="navigationform1.aspx" >GO to my reciever page</a>
    </div>
    </form>
</body>
</html>
