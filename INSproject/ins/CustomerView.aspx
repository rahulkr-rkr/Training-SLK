<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerView.aspx.cs" Inherits="CustomerView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>customer view</title>
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
                <li style="font-weight:bolder"><a href="ContactUs.aspx">CONTACT US</a></li>
                <li style="font-weight:bolder"><a href="#">SEARCH</a></li>
            </ul>    
        </div>
    </nav>  
    <form id="form1" runat="server" class="well form-horizontal" style="width:75%;margin-left:200px">
    <div class="input-group">
    
   
    <h1>Your Policy details are listed below</h1>
    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbName" runat="server" class="form-control" ReadOnly="True" ></asp:TextBox>
&nbsp;<br />
        <br />
        <asp:Label ID="lblInstitutionname" runat="server" Text="Institutionname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbInstitutionname" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblSpecialization" runat="server" Text="Specialization"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbSpecialization" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPolicytype" runat="server" Text="Policytype"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPolicytype" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPremium" runat="server" Text="Premium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPremium" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblInsamount" runat="server" Text="InsureAmount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbinsamount" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
         </div>
        <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn alert-danger" OnClick="btnBack_Click" />
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
