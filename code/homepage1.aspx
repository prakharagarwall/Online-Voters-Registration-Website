<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage1.aspx.cs" Inherits="homepage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 50px;
        }
        .auto-style6 {
            height: 427px;
            }
        .auto-style7 {
            width: 100%;
            height: 380px;
        }
        .auto-style8 {
            width: 681px;
            height: 384px;
        }
        .auto-style9 {
            width: 15562px;
        }
        .auto-style10 {
            width: 14719px;
            height: 384px;
        }
        .auto-style11 {
            width: 491px;
            height: 384px;
        }
    </style>
</head>
<body style="height: 565px; background-image:url('bg1.jpg'); width: 1352px;">
    <form id="form1" runat="server">
   <table class="auto-style1" style="border-style: none; border-color: inherit; border-width: 0; border-spacing: 0px; padding: 0px; margin: 0px; height: 631px;">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="126px" ImageUrl="~/images/header.jpg" Width="1346px" />
                </td>
            </tr>
            <tr>
                <td>
                    <table border=0 height=33 style="width: 1352px"
<tr>
<td width="225" bgcolor=#0066FF class="auto-style9"><a href="aboutus.aspx" style="text-decoration:none"><font color=white size=4 face=arial><center><b>About Us</b></center></font></a></td>
<td width="225" bgcolor=#0066FF class="auto-style9"><a href="loginpage.aspx" style="text-decoration:none"><font color=white size=4 face=arial><center><b>Login</b></center></font></a></td>
<td width="225" bgcolor=#0066FF class="auto-style9"><a href="registrationpage.aspx" style="text-decoration:none"><font color=white size=4 face=arial><center><b>Registration</b></center></font></a></td>
<td width="225" bgcolor=#0066FF class="auto-style9"><a href="contactus.aspx" style="text-decoration:none"><font color=white size=4 face=arial><center><b>Contact Us</b></center></a></td>
<td width="225" bgcolor=#0066FF class="auto-style9"><a href="circular.aspx" style="text-decoration:none"><font color=white size=4 face=arial><center><b>Circular</b></center></font></a></td>
<td width="225" bgcolor=#0066FF class="auto-style9"><a href="feedback.aspx" style="text-decoration:none"><font color=white size=4 face=arial><center><b>Feedback</b></center></font></a></td>
</tr>
</table>

                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style11" style="margin-left: 50px; text-align: center;">
&nbsp;
<asp:Image ID="Image2" runat="server" Height="96px" ImageUrl="~/images/logo.jpg" style="margin-right: 0px; margin-top: 0px" Width="144px" />
                                <br />
                                 <marquee direction="up" scrollamount="4" onmouseover="this.setAttribute('scrollamount',0,0);" onmouseout="this.setAttribute('scrollamount',4,0);">
                                    <br /><br />
                    <br />
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="#">Recent Link 1</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="#">Recent Link 2</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="#">Recent Link 3</asp:HyperLink>
                    </marquee>

                                <br />
                                <br />

                                &nbsp;&nbsp;

                            <td class="auto-style10">
                                <p style="height: 8px; text-align: center; text-decoration: blink; color: #FF0000; font-size: xx-large; margin-bottom: 36px;">
 Welcome to Online Voting System</b></p>
                                        <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
                                        <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
                                           <link href="themes/1/generic.css" rel="stylesheet" type="text/css" />
                                    <div id="sliderFrame">
                                        <div id="slider">
                                            <img src="images/slide1.jpg" alt="Welcome to Online Voting System" border="1" />
                                            <img src="images/slide2.jpg" alt="Welcome to Online Voting System" border="1" />
                                            <img src="images/slide3.jpg" alt="Welcome to Online Voting
                                            
                                        </div>
                                    </div>
                                <p style="text-align: center">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="35px" ImageUrl="~/images/reghere.PNG" PostBackUrl="~/registrationpage.aspx" Width="149px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/images/loghere.jpg" OnClick="ImageButton2_Click" PostBackUrl="~/loginpage.aspx" Width="158px" />
                                </p>
                            </td>
                        </tr>
                    </table>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="tCopyright © 2015. Design By: Prakhar
                    <br />
                    agarwal © 2015. Design By-: :prakhar agarwal</b></td>
            </tr>
        </table>
    </form>
</body>
</html>
