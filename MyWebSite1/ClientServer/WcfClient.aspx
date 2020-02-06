<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WcfClient.aspx.cs" Inherits="ClientServer_WcfClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Employee WCF service Client</h1>
        <asp:Label ID="lblHeader" runat="server"></asp:Label>
        <h2>Calling Simple WCF function with Parameter</h2>

   
        <asp:Label ID="Label2" runat="server" Text="Basic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtBasic" runat="server">2000</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnGetHra" runat="server" Text="getHra" OnClick="btnGetHra_Click" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Results:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <br />
        <h2>Calling WCF Function To Save and Get Employee details</h2>
        <p>&nbsp;</p>


         </div>
        <asp:Label ID="Label5" runat="server" Text="EmpId"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmpNo" runat="server">1</asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="EmpName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmpName" runat="server">Nitin Rao</asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmpAge" runat="server">24</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="SAVE" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnGet" runat="server" OnClick="btnGet_Click" Text="GET" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="CLEAR" />
    </form>
</body>
</html>
