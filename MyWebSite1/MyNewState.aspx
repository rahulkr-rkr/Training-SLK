<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyNewState.aspx.cs" Inherits="MyNewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="border-color:black;border-style:solid">
        <tr>
            <th colspan="2">ViewState</th>
        </tr>
        <tr>
            <th>Enabled</th>
            <th>Disabled</th>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button1" onclick="Button1_click" Width="113px"/>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Button2" EnableViewState="False" OnClick="Button2_click" Width="116px"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server">TextBox1</asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" EnableViewState="False">TextBox2</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label2" EnableViewState="False"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
