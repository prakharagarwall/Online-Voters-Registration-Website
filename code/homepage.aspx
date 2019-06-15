<%@ Page Title="" Language="C#" MasterPageFile="~/M<a href="homepage.aspx">homepage.aspx</a>asterPage3.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 274px; text-align: center; text-decoration: blink; color: #FF0000; font-size: xx-large;">
        <b>Welcome to Online Voting System</b><br />
      <asp:Image ID="Image3" runat="server" ImageUrl="~/images/slide1.jpg" Height="254px" Width="990px" style="margin-left: 0px; margin-top: 0px;" />
</p>
    <p style="text-align: center">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/images/reghere.PNG" PostBackUrl="~/registrationpage.aspx" Width="149px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/images/loghere.jpg" OnClick="ImageButton2_Click" PostBackUrl="~/loginpage.aspx" Width="158px" />
</p>
   
</asp:Content>

