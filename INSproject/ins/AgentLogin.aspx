<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgentLogin.aspx.cs" Inherits="AgentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agent login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>

body{ background-color:#1a5874; }

body {font-family: Arial, Helvetica, sans-serif;}

form {border: 3px solid #f1f1f1;}
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

input[type=text], input[type=password] {
  width: 100%;

  padding: 12px 20px;

  margin: 8px 0;

  display: inline-block;

  border: 1px solid #ccc;

  box-sizing: border-box;

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



button:hover {

  opacity: 0.8;

}



.cancelbtn {

  width: auto;

  padding: 10px 18px;

  background-color: #f44336;

}





.container {

  padding: 16px;

}



span.psw {

  float: right;

  padding-top: 16px;

}





@media screen and (max-width: 300px) {

  span.psw {

     display: block;

     float: none;

  }

  .cancelbtn {

     width: 100%;

  }

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
    <form id="form1" runat="server" style="width:70%;margin-left:200px">
        <h2 style="color:white"> Agent Login Form</h2>
    <div class="container" >
                  <asp:Label ID="lblUsername" runat="server" Text="Username" style="color:white;"></asp:Label>
                <br/>
                  <asp:TextBox ID="tbUsername" runat="server" style="width:80%;"  class="form-control" placeholder="Enter Username"></asp:TextBox>
                <br/>
                  <asp:Label ID="lblPassword" runat="server" Text="Password" style="color:white;"></asp:Label>
                <br/>
                  <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" style="width:80%;" class="form-control" placeholder="Enter Password"></asp:TextBox>
                <br /><br />
                  <asp:Button ID="btnLogin" style="width:80%;" runat="server" Text="LOGIN" class="btn btn-success" OnClick="btnLogin_Click"/><br/><br />
              </div>
            <div class="container" style="background-color:#f1f1f1;width:100%;">
                 <button type="button" class="cancelbtn" onclick="window.location.href='InsuranceHome.aspx'">Cancel</button>
                 
                 <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="BACK" class="btn btn-default warning" />
                 
           </div>
            <h2 style="color:white" align="center">Are you a New User??</h2>
            <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-success" style="width:80%; margin-left:100px" OnClick="btnRegister_Click"/><br /><br />
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
