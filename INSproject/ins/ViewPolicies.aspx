<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewPolicies.aspx.cs" Inherits="ViewPolicies" %>

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
    <form id="form1" runat="server">
    <div style="width:75%;margin-left:200px">
        <h1 style="color:white" align="center">Policy Information Portal</h1><hr />
        <div style="background-color:#222448">
            <h2 style="color:white">Insurance for private Colleges and Universities</h2>
            <p style="color:white">
                As a private college or university administrator, delivering higher education is only 
                the first point in your myriad responsibilities. You understand that today, anything 
                can happen on your campus. Whether it's physical property, technology risks, financial 
                security or the safety and reputations of students and faculty, private college and 
                universities face more challenges now than ever before. Risks related to traveling 
                abroad, cyber crime and student safety are just a few of the things you have to think 
                about. When you need coverage to confront issues faced by your employees and students 
                worldwide, you need a carrier that has experience supporting the insurance needs of 
                educational institutions.
            </p>
            <h3 style="color:white">Policy Types</h3>
            <ul style="display:block;color:white">
                <li>Property Assist</li>
                    <asp:Table ID="Table1" runat="server" BorderColor="Black" BorderStyle="Solid" CellPadding="10" Border="3px solid black">
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Value &lt; 5,00,000</asp:TableCell>
                            <asp:TableCell runat="server">Premium1=5%</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">value &gt; 5,00,000</asp:TableCell>
                            <asp:TableCell runat="server">Premium2=7%</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <li>Staff Maintainace Assist</li>
                      <asp:Table ID="Table2" runat="server" BorderColor="Black" BorderStyle="Solid" CellPadding="10" Border="3px solid black">
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Staff NO &lt; 10</asp:TableCell>
                            <asp:TableCell runat="server">Premium1=5%</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Staff NO &gt; 10</asp:TableCell>
                            <asp:TableCell runat="server">Premium2=7%</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                <li>Student Maintainace Assist</li>
                <asp:Table ID="Table3" runat="server" BorderColor="Black" BorderStyle="Solid" CellPadding="10" Border="3px solid black">
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Student no &lt; 300</asp:TableCell>
                            <asp:TableCell runat="server">Premium1=5%</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Student no &gt; 300</asp:TableCell>
                            <asp:TableCell runat="server">Premium2=7%</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
            </ul>
        </div>
        <div style="background-color:#2b2d58">
            <h2 style="color:white">Insurance For Private Secondary Schools</h2>
            <p style="color:white">
                Risks on private secondary school campuses have graduated to new heights, 
                and delivering a solid education is only the first point in your myriad 
                responsibilities. Whether it's physical property, technology risks, 
                financial security or the safety and reputations of students and faculty, 
                education institutions face more challenges now than ever before. 
                Risks related to traveling abroad, cyber crime and student safety are
                 just a few of the things you have to think about. When you need 
                coverage to confront issues faced by your employees and students worldwide, 
                you need a carrier that has experience supporting the insurance needs of 
                educational institutions.
            </p>
            <h3 style="color:white">Policy Types</h3>
            <ul style="display:block;color:white">
                <li>Property Assist</li>
                    <asp:Table ID="Table4" runat="server" BorderColor="Black" BorderStyle="Solid" CellPadding="10" Border="3px solid black">
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Value &lt; 5,00,000</asp:TableCell>
                            <asp:TableCell runat="server">Premium1=5%</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">value &gt; 5,00,000</asp:TableCell>
                            <asp:TableCell runat="server">Premium2=7%</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <li>Staff Maintainace Assist</li>
                      <asp:Table ID="Table5" runat="server" BorderColor="Black" BorderStyle="Solid" CellPadding="10" Border="3px solid black">
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Staff NO &lt; 10</asp:TableCell>
                            <asp:TableCell runat="server">Premium1=5%</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Staff NO &gt; 10</asp:TableCell>
                            <asp:TableCell runat="server">Premium2=7%</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                <li>Student Maintainace Assist</li>
                <asp:Table ID="Table6" runat="server" BorderColor="Black" BorderStyle="Solid" CellPadding="10" Border="3px solid black">
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Student no &lt; 300</asp:TableCell>
                            <asp:TableCell runat="server">Premium1=5%</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server" >
                            <asp:TableCell runat="server">Student no &gt; 300</asp:TableCell>
                            <asp:TableCell runat="server">Premium2=7%</asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
            </ul>
        </div>
        <asp:Button ID="btnBack" runat="server" Text="BACK" OnClick="btnBack_Click" class="btn btn-default btn-primary"/>
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
