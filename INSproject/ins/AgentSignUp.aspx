<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgentSignUp.aspx.cs" Inherits="AgentSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>agent signup</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
body{ background-color:#1a5874; }
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

.form-group {
    color:white;
    background-color:#1a5874;
  padding: 16px;

}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
input[type=text], input[type=password],input[type=email],input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  color:black;
}
marquee{
                        color:white;
                        font-size:x-large;
                        font-style:italic;
                        font-family:Brush Script MT;
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
    <form id="form1" runat="server" style="border:2px solid #ccc;width:70%;margin-left:200px;" >
            <div class="form-group">
            <h1>Sign Up</h1>
             <p>Please fill in this form to create an account.</p>
               <hr/>
              
               <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br/>
               <asp:TextBox ID="tbUsername" runat="server" style="width:60%" class="form-control" placeholder="Enter Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username cannot be empty" ControlToValidate="tbUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                <br/>
               
               <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><br/>
               <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" style="width:60%" class="form-control" placeholder="Enter Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password cannot be empty" ControlToValidate="tbPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <br/>

               <asp:Label ID="lblRetype" runat="server" Text="ReType Password"></asp:Label><br/>
               <asp:TextBox ID="tbRetype" runat="server" TextMode="Password" style="width:60%" class="form-control" placeholder="Retype Password"></asp:TextBox>
                
                <asp:CompareValidator ID="cvRetype" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbRetype" ErrorMessage="password not matching" ForeColor="Red"></asp:CompareValidator>
                
                <br/>
                <asp:Label ID="lblFirstname" runat="server" Text="FirstName"></asp:Label><br />
                <asp:TextBox ID="tbFirstname" runat="server" style="width:60%" class="form-control" placeholder="Enter Firstname"></asp:TextBox>
                <br />

                <asp:Label ID="lblLastname" runat="server" Text="Lastname"></asp:Label><br />
                <asp:TextBox ID="tbLastname" runat="server" style="width:60%" class="form-control" placeholder="Enter Lastname"></asp:TextBox>
                <br />

               <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label><br/>
               <asp:TextBox ID="tbEmail" runat="server" TextMode="Email" style="width:60%" class="form-control" placeholder="Enter Email"></asp:TextBox><br/>

                <asp:Label ID="lblPhonenumber" runat="server" Text="PhoneNumber"></asp:Label><br/>
                <asp:TextBox ID="tbPhonenumber" runat="server" TextMode="Number" style="width:60%" class="form-control" placeholder="Enter PhoneNumber"></asp:TextBox><br/>

               <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
           <div class="clearfix" style="width:60%;">
               <asp:Button ID="btnSignup" runat="server" Text="SIGNUP" OnClick="btnSignup_Click" Class="btn btn-success"/>

               <asp:Label ID="lblMsg" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>

           </div>
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
