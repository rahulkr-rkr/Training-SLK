<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginform.aspx.cs" Inherits="loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body style="background-color: #f0ffff;">
    <form id="form1" runat="server">
        <h1 style="font-family: quot Berlin Sans FB quot; font-size: large; font-weight: bolder; font-style: italic; color: #0000FF; text-align: center; background-color: #99FF66; border-style: hidden">LOGIN FORM</h1>
    <div style="background-color: #FFFFFF; font-family: 'Bauhaus 93'; font-size: x-large; font-weight: bolder">
    
        <br />
        <asp:Label ID="lblUsername" runat="server" BackColor="Red" Text="Username"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button class="btn btn-warning" ID="btnLogin" runat="server" BackColor="#00CC00" Font-Bold="True" OnClick="btnLogin_Click" Text="LOGIN" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button class="btn btn-info" ID="btnreset" runat="server" OnClick="btnreset_Click" Text="RESET" Height="36px" Width="84px" />
        <br />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
