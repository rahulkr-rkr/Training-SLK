<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerPayment.aspx.cs" Inherits="CustomerPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Payment</title>
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

form{

    width:75%;

    margin-left:200px;

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
    <form id="form1" runat="server" style="border:2px solid #ccc;width:70%;margin-left:200px;">
    <div class="form-group" style="width:50%;margin-left:200px">
         <h1 style="color:white">Payment Portal</h1>
        
             <asp:Label ID="lblInnsureamount" runat="server" Text="InsureAmount" ForeColor="White"></asp:Label>

            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:TextBox ID="tbInsureamount" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>

            <br />

            <br />

            <asp:Label ID="lblInsuretime" runat="server" Text="Insuretime" ForeColor="White"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbInsuretime" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>

            <br />

            <br />

            <asp:Label ID="lblPremiumrate" runat="server" Text="Premiumrate" ForeColor="White"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbPremiumrate" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>

            <br />

            <br />
        <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate"  class="btn btn-default alert-success"/>

&nbsp;
        <br /><br />
            <asp:Label ID="lblPayment" runat="server" Text="Payment" ForeColor="White"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbPayment" runat="server" class="form-control" ReadOnly="True"></asp:TextBox >

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />

            <asp:Button ID="btnBack" runat="server" Text="BACK"  class="btn btn-default alert-success" OnClick="btnBack_Click"/>

            
    </div>
        <hr />

        <div class="form-group" style="width:50%;margin-left:200px">
            <h2 style="color:white">Payment Form</h2>

            <asp:Label ID="lblName" runat="server" Text="Name" ForeColor="White"></asp:Label>



        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbName" runat="server" class="form-control"></asp:TextBox>

            <br />

            <br />

            <asp:Label ID="lblACCNo" runat="server" Text="ACCNo" ForeColor="White"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbACCNo" runat="server" MaxLength="10" TextMode="Number" class="form-control"></asp:TextBox>

            <br />

            <br />

            <asp:Label ID="lblBank" runat="server" Text="Bank" ForeColor="White"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbBank" runat="server" class="form-control"></asp:TextBox>

            <br />

            <br />

            <asp:Label ID="lblISFCCode" runat="server" Text="ISFC Code" ForeColor="White"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbISFCCode" runat="server" class="form-control"></asp:TextBox>

            <br />

            <br />

            <asp:Label ID="lblDate" runat="server" Text="Date" ForeColor="White"></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbDate" runat="server" TextMode="Date" class="form-control"></asp:TextBox>

            <br />

            <br />

            <br />

            <asp:Button ID="BtnPay" runat="server" Text="PAY" class="btn btn-default alert-success" OnClick="BtnPay_Click" />
        </div>
        <hr />

        <div class="form-group" style="width:50%;margin-left:200px">
            <h2 style="color:white">Updated Insurance details</h2>
            <asp:Button ID="btnUpdate" runat="server" Text="UPDATE"  class="btn btn-default alert-success" OnClick="btnUpdate_Click"/>
            <br />
            <br />
            <asp:Label ID="lblInsureAmount2" runat="server" Text="InsureAmount" ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tbInsureAmount2" runat="server" class="form-control"></asp:TextBox>

            <br />

            <br />

            <asp:Label ID="lblInsureTime2" runat="server" Text="InsureTime" ForeColor="White"></asp:Label>



        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:TextBox ID="tbInsureTime2" runat="server" class="form-control"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnNewupdate" runat="server" Text="UPDATE PAYMENT DETAILS" class="btn btn-default alert-success" OnClick="btnNewupdate_Click"/>

            <br />
            <br />
            <br />
            <asp:Button ID="btnpaydetails" runat="server" OnClick="btnpaydetails_Click" Text="My Payment Details" class="btn btn-default alert-success"/><br />
            <br />
            <asp:GridView ID="GridViewpay" runat="server" ForeColor="Black" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="8" CellSpacing="5" GridLines="Vertical" ShowHeaderWhenEmpty="True">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>

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
