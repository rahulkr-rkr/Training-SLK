<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsuranceHome.aspx.cs" Inherits="InsuranceHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
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
        .vertical-menu {
                         width: 150px;
                         margin-left:200px;
                         float:left;
                       }
               .main {
                       float:left;
                       width:62%;
                       padding:0 20px;
                     }    
    .vertical-menu a {
                        background-color: red;
                        color: white;
                        display: block;
                        padding: 12px;
                        text-decoration: none;
                        height:150px;
                        font-family:charcol;
                        }
    .vertical-menu a:hover {
                        background-color: darkgray;
                           }

            .vertical-menu a.active {
                                        background-color: #4CAF50;
                                         color: white;
                                    }
                        body
                               {
                                     background-color:#1a5874;
                               }
                .container
                            {
                              margin-left:5px;
                              margin-top:20px;
                              float:left;
                                width:30%;
                                background-color:white;
                            }
                .container2
                            {
  
                                float:right;
                                margin-top:20px;
                                margin-left:2px;
                                background-color:white;
                                height:250px;
                                width:60%;
                            }
                      li{width:200px;}
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
  text-align:center;
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
    <form id="form1" runat="server">
    <div>
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
    <div>
       <div class="vertical-menu">
            <a href="#"><center><br /><small>LOOK FOR </small><br /><b>INSURANCE<br /> PRODUCTS &<br />SERVICES</b></center></a><br />
            <a href="#"><center><br /><small>FIND</small><br /><b>RESOURCES<br />TO MANAGE & <br />REDUCE RISK</b></center></a><br />
            <a href="#"><center><br /><small>FIND</small><br /><b>INFORMATION <br />ABOUT CNA</b></center></a>
        </div>
        <div class="main">
            <img src="cna.jpg"/>
            <div class="container">
                    <h2 style="color:red;">QUICK LINKS</h2>
                    <div class="list-group">
                        <a href="CustomerLogin.aspx" class="list-group-item active">CUSTOMER LOGIN</a>
                        <a href="AgentLogin.aspx" class="list-group-item">AGENT LOGIN</a>
                        <a href="CustomerLogin.aspx" class="list-group-item">PAY MY BILL</a>
                        <a href="#" class="list-group-item">POLICIES </a>
                        <a href="#" class="list-group-item">SOCIAL RESPONSIBILITY </a>
                    </div>
             </div>
             <div class="container2">
                    <p style="font-weight:bolder;font-family:'Agency FB'; font-size:x-large;">Personalize your experience. Tell us a bit about your business.</p>
                    <br />
                    <div class="dropdown">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" class="btn btn-primary dropdown-toggle">
                            <asp:ListItem>Education</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
                            <asp:ListItem>Motor</asp:ListItem>
                            <asp:ListItem>Construction</asp:ListItem>
                            <asp:ListItem>Health</asp:ListItem>
                            <asp:ListItem>Technology</asp:ListItem>
                        </asp:DropDownList>   
                    </div>
                    <br/>
                    <div class="dropdown">
                        <asp:DropDownList ID="DropDownList2" runat="server" class="btn btn-primary dropdown-toggle">
                        </asp:DropDownList> 
                    </div>
                    <br />
                    <div class="dropdown">
                        <asp:DropDownList ID="DropDownList3" runat="server" class="btn btn-primary dropdown-toggle">
                            <asp:ListItem>SMALL</asp:ListItem>
                            <asp:ListItem>MEDIUM</asp:ListItem>
                            <asp:ListItem>LARGE</asp:ListItem>
                            <asp:ListItem>ANY SIZE</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                     
                    <br />
                    
                    <asp:Button ID="btnGo" runat="server" Text="GO" class="btn btn-danger" OnClick="btnGo_Click" />
                    
                    <br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br /><br />    
                </div>
        </div>
        
        <div style="background-color:white; float:left;margin-top:50px; width:60%; margin-left:370px;" class="container-fluid bg-3 text-center">
             <h3 class="margin">EDUCATIONAL POLICIES</h3><hr/>
                <div class="col-sm-6">
                      <h3> INSURANCE FOR PRIVATE COLLEGES AND UNIVERSITIES</h3>
                      <p>Our Risk Control professionals work with you to help safeguard your campus. We offer a suite of tailored insurance solutions for private colleges and universities, and complement your coverage with risk management programs, training courses and online resources to help you minimize your risk exposure and potentially reduce costs.</p>
                     <img src="cna2.jpg" class="img-responsive margin" style="width:100%;height:190px" alt="Image"/>
                    <br /><br /> <br /><br /> 
                </div>
                <div class="col-sm-6">
                      <h3> INSURANCE FOR PRIVATE SECONDARY SCHOOLS</h3> 
                     <p>our Risk Control professionals work with you to help safeguard your campus. We offer a suite of tailored insurance solutions for private secondary schools, and complement your coverage with risk management programs, training courses and online resources to help you minimize your risk exposure and potentially reduce costs.</p>
                     <img src="cna3.jpg" class="img-responsive margin" style="width:100%;height:190px" alt="Image"/>
                    <br /><br /> <br /><br /> 
                     </div>
            
            <br />
        </div>



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
    </div>
        <nav class="navbar navbar-inverse navbar-fixed-bottom" style="width:100%;">
            <div class="container-fluid1" style="margin-left:200px; width:72%;">
                
                    <ul class="nav navbar-nav" style="margin-left:200px;">
                        <li style="width:400px; font-weight:bolder"><a href="CustomerLogin.aspx">CUSTOMER PORTAL</a></li>
                        <li style="width:400px;font-weight:bolder"><a href="AgentLogin.aspx">AGENT PORTAL</a></li>
                    </ul>
           </div>
        </nav>
    
    </div>
    </form>
</body>
</html>
