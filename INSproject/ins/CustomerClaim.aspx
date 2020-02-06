<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerClaim.aspx.cs" Inherits="CustomerClaim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CustomerClaim</title>

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

                <li style="font-weight:bolder"><a href="#">CONTACT US</a></li>

                <li style="font-weight:bolder"><a href="#">SEARCH</a></li>

            </ul>            

        </div>

    </nav>  
    <form id="btnClaimUser" runat="server" style="border:2px solid #ccc;width:70%;margin-left:200px;">
    <div  class="form-group" style="width:50%;margin-left:200px">
        <h1 style="color:white">Claim Portal</h1>
             <h2 style="color:white">Your Policy id</h2>
        <asp:Label ID="lblMsg" runat="server" ForeColor="White"></asp:Label>
            <hr />

            <asp:TextBox ID="tbPolicyid" runat="server" placeholder="Enter your policy id" class="form-control"></asp:TextBox><br />
        <asp:Button ID="btncheck" runat="server" Text="Policy Status" OnClick="btncheck_Click" class="btn btn-alert-success" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblcheck" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label> <br /><br />
        <asp:Button ID="btnfetch" runat="server" Text="Fetch Your Data " class="btn btn-alert-success" OnClick="btnfetch_Click" /><br />
           
        <br /><br />
        
            <asp:Label ID="lblName" runat="server" Text="Name" ForeColor="White"></asp:Label><br />

            <asp:TextBox ID="tbName" runat="server" class="form-control" ReadOnly="True"></asp:TextBox><br />

            <asp:Label ID="lblInstitution" runat="server" Text="Institution" ForeColor="White"></asp:Label><br />

            <asp:TextBox ID="tbInstitution" runat="server" class="form-control" ReadOnly="True"></asp:TextBox><br />

            <asp:Label ID="lblClaimamount" runat="server" Text="Claimamount" ForeColor="White"></asp:Label><br />

            <asp:TextBox ID="tbClaimamount" runat="server" class="form-control" ReadOnly="True"></asp:TextBox><br />

            <asp:Label ID="lblPaidamount" runat="server" Text="Remainingamount" ForeColor="White"></asp:Label><br />

            <asp:TextBox ID="tbPaidamount" runat="server" class="form-control" ReadOnly="True"></asp:TextBox><br />

            <asp:Label ID="lblClaimtype" runat="server" Text="Claimtype" ForeColor="White"></asp:Label><br />

            <asp:DropDownList ID="ddlClaimtype" runat="server" class="btn btn-alert-success dropdown-toggle">

                <asp:ListItem>Property</asp:ListItem>

                <asp:ListItem>Management Liability</asp:ListItem>

                <asp:ListItem>Auto</asp:ListItem>

                <asp:ListItem>Staffs compensation</asp:ListItem>

                <asp:ListItem>Student Care</asp:ListItem>

            </asp:DropDownList><br /><br /><br />

            <asp:Button ID="btnClaim" runat="server" Text="Claimable amount" class="btn btn-alert-success" OnClick="btnClaim_Click"/><br /><br />

            <asp:TextBox ID="tbClaim" runat="server" Class="form-control"></asp:TextBox>
           
        <asp:Label ID="lblDate" runat="server" Text="Date" ForeColor="White"></asp:Label><br />
        <asp:TextBox ID="tbDate" runat="server" Text="Enter Todays Date" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnClaimPolicy" runat="server" Text="ClaimPolicy" class="btn btn-alert-success" OnClick="btnClaimPolicy_Click" />
         
        <br />
        <asp:Label ID="lblclaim" runat="server" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnProceed" runat="server" OnClick="btnProceed_Click" Text="Yes,Proceed"  class="btn btn-alert-danger"/>
        <br />
        <asp:Label ID="lblfinal" runat="server" ForeColor="White"></asp:Label>
         <br />
        <br />
        <asp:Button ID="btnBack" runat="server" Text="BACK"  class="btn btn-alert-success" OnClick="btnBack_Click"/>
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
