<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeUserControl.aspx.cs" Inherits="ADO_EmployeeUserControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>" DeleteCommand="DELETE FROM [employee] WHERE [empno] = @empno" InsertCommand="INSERT INTO [employee] ([empno], [empname], [address], [age], [pfno]) VALUES (@empno, @empname, @address, @age, @pfno)" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [empname] = @empname, [address] = @address, [age] = @age, [pfno] = @pfno WHERE [empno] = @empno">
            <DeleteParameters>
                <asp:Parameter Name="empno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="empno" Type="String" />
                <asp:Parameter Name="empname" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="pfno" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="empname" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="pfno" Type="String" />
                <asp:Parameter Name="empno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="empno" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="empno" HeaderText="empno" ReadOnly="True" SortExpression="empno" />
                <asp:BoundField DataField="empname" HeaderText="empname" SortExpression="empname" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="pfno" HeaderText="pfno" SortExpression="pfno" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>
