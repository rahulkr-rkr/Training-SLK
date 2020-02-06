<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgentPortal.aspx.cs" Inherits="AgentPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AgentPortal</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <style>
        * {
             box-sizing: border-box;
          }
        .navbar-brand
        {
            color:indianred;
            font-family:Broadway;
            font-size:xx-large;
            font-weight:bolder;
            background-color:white;
            width: 150px;
            height: 55px;
        }
        body
                               {
                                     background-color:#1a5874;
                               }
        marquee{
                        color:white;
                        font-size:x-large;
                        font-style:italic;
                        font-family:Brush Script MT;
                    }
        .vertical-menu {
                         width: 400px;
                         margin-left:300px;
                         float:left;
                       }
            
    .vertical-menu a {
                        background-color: red;
                        color: white;
                        display: block;
                        padding: 12px;
                        text-decoration: none;
                        height:70px;
                        font-family:charcol;
                        }
    .vertical-menu a:hover {
                        background-color: darkgray;
                           }
         footer {
      background-color: #1a5874;
      color:white;
      padding: 25px;
      float:left;
      margin-top:10px;
      margin-bottom:200px;
      width:100%;
    }

                    .fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}
                    .fa:hover {
    opacity: 0.9;
}
               .fa-facebook {
  background: #1a5874;
  color: white;
}

.fa-twitter {
  background: #1a5874;
  color: white;
}


.fa-linkedin {
  background: #1a5874;
  color: white;
}

.fa-youtube {
  background: #1a5874;
  color: white;
}
                    .fa-instagram {
  background: #1a5874;
  color: white;
}

         </style>
</head>
<body>
    <marquee>Quality Is Our Policy.....</marquee>
    <nav class="navbar navbar-inverse" style="width:100%;">
        <div class="container-fluid" style="margin-left:200px; width:72%;">
            <div class="navbar-header">
                <a class="navbar-brand" href="InsuranceHome.aspx" style="color:red; background-color:white;"><i>RKR</i></a>
            </div>
            <ul class="nav navbar-nav">
                <li style="font-weight:bolder"><a href="CustomerLogin.aspx">CLAIM A POLICY</a></li>
                <li style="font-weight:bolder"><a href="CustomerLogin.aspx">DO PAYMENT</a></li>
                <li style="font-weight:bolder"><a href="ContactUs.aspx">CONTACT US</a></li>
                <li style="font-weight:bolder"><a href="#">SEARCH</a></li>
            </ul>
               
        </div>
    </nav>  
    <form id="form1" runat="server">
    <div style="width:75%;margin-left:200px;">
        <h1 style="color:white;">WELCOME</h1>
        <asp:Label ID="lblWelcome" runat="server" Text="Welcome" style="color:white;"></asp:Label>
        <br />
        <hr />
        <asp:Button ID="btnViewCus" runat="server" Text="View Customers" OnClick="btnViewCus_Click"  Class="btn btn-default alert-success"/><br /><br />
        <asp:GridView ID="GridViewCus" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
        <hr />
        <h3 style="color:white;">View customer messages</h3>
        <asp:Button ID="btnViewMsg" runat="server" Text="View Customer Messages" Class="btn btn-default alert-success" OnClick="btnViewMsg_Click"/><br /><br />
        <asp:GridView ID="GridViewMsg" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <hr />
        <h3 style="color:white;">Reply to customer message</h3>
        <asp:TextBox ID="tbName" runat="server" placeholder="Enter name of customer" Class="form-control"></asp:TextBox><br />
        <asp:Button ID="btnReply" runat="server" Text="View Message" Class="btn btn-default alert-success" OnClick="btnReply_Click"/><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Message" ForeColor="White"></asp:Label><br />
        <asp:TextBox ID="tbMsg" runat="server" TextMode="MultiLine"  Class="form-control" ReadOnly="True"></asp:TextBox>
        <h4  style="color:white;">Reply for the message</h4>
        <asp:TextBox ID="tbReply" runat="server" TextMode="MultiLine"  Class="form-control" ></asp:TextBox><br />
        <br />
        <asp:Button ID="btnReplyUpdate" runat="server" Text="Reply" Class="btn btn-default alert-success" OnClick="btnReplyUpdate_Click"/>

    
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" Class="btn btn-default alert-success" OnClick="btnLogout_Click"/>

    
    </div>
    </form>
    <div>
                <footer class="container-fluid text-center">

                    <hr />
                    <a href="#" class="fa fa-linkedin"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-youtube"></a>

                    
                    <br />
                    <table style="color:white;width:70%;margin-left:200px">
                        <tr>
                            <td>Things you must know</td>
                            <td>Home</td>
                            <td>Privacy Policy</td>
                        </tr>
                        <tr>
                            <td>Why Insurance?</td>
                            <td>Report</td>
                            <td>FAQs</td>
                        </tr>
                        <tr>
                            <td>Welcome kit</td>
                            <td>Feedback</td>
                            <td>Careers</td>
                        </tr>
                    </table>
                    <br />
                    <p>Copyright   2020 RKR. All rights reserved. </p>

                </footer>
       </div>
    <nav class="navbar navbar-inverse navbar-fixed-bottom" style="width:100%;">
            <div class="container-fluid1" style="margin-left:200px; width:72%;">
                
                    <ul class="nav navbar-nav" style="margin-left:200px;">
                        <li style="width:400px; font-weight:bolder"><a href="CustomerLogin.aspx">CUSTOMER PORTAL</a></li>
                        <li style="width:400px;font-weight:bolder"><a href="AgentLogin.aspx">AGENT PORTAL</a></li>
                    </ul>
           </div>
        </nav>
</body>
</html>
