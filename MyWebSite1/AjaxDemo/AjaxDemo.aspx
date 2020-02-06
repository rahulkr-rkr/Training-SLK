<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxDemo.aspx.cs" Inherits="AjaxDemo_AjaxDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border:dashed;border-color:red">
    <h1>Normal control</h1>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Normal Button" OnClick="Button1_Click" />
    </div>
        <div style="border:dashed;border-color:blue"> 
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <h1>ajax</h1>
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click1" />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick">
                    </asp:Timer>
                </ContentTemplate>
                
            </asp:UpdatePanel>
           
        </div>
    </form>
</body>
</html>
