<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="viewprofile.aspx.cs" Inherits="viewprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
           .auto-style12 {
            width: 100%;
            height: 455px;
        }
        .auto-style13 {
            height: 86px;
        }
        .auto-style14 {
            height: 86px;
            width: 150px;
        }
        .auto-style15 {
            height: 26px;
        }
           .auto-style16 {
               width: 100%;
               height: 252px;
           }
           .auto-style17 {
               width: 159px;
           }
           .auto-style18 {
               width: 346px;
           }
           .auto-style19 {
               width: 163px;
           }
           .auto-style20 {
               width: 159px;
               height: 42px;
           }
           .auto-style21 {
               width: 346px;
               height: 42px;
           }
           .auto-style22 {
               width: 163px;
               height: 42px;
           }
           .auto-style23 {
               height: 42px;
           }
           .auto-style24 {
               width: 159px;
               height: 41px;
           }
           .auto-style25 {
               width: 346px;
               height: 41px;
           }
           .auto-style26 {
               width: 163px;
               height: 41px;
           }
           .auto-style27 {
               height: 41px;
           }
           .auto-style28 {
               width:100%;
               height: 31px;
           }
           .auto-style32 {
               width: 234px;
           }
           .auto-style34 {
               width: 201px;
           }
           .auto-style35 {
               width: 224px;
           }
           .auto-style36 {
               width: 223px;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style12" style="background-color: #FFFFCC">
        <tr>
            <td class="auto-style14" style="border-color: #CCCCCC; border-width: thin; background-color: #FFFF99; border-bottom-style: solid;">
                <asp:Image ID="ImageProfilePic" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" Height="103px" style="margin-bottom: 0px" Width="120px" />
            </td>
            <td class="auto-style13" style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid;">WELCOME:&nbsp;
                <asp:Label ID="LabelName" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style13" style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right;">
                <asp:Button ID="ButtonLogOut" runat="server" OnClick="ButtonLogOut_Click" Text="LogOut" Width="98px" />
            &nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="3" style="background-color: #FFFFCC; text-align: center;">
                <table class="auto-style28">
                    <tr>
                        <td style="background-color: #FFFFCC" class="auto-style34">
                            <asp:HyperLink ID="HyperLink11" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/viewprofile.aspx">View Profile</asp:HyperLink>
                        </td>
                        <td style="background-color: #CCCCFF" class="auto-style32">
                            <asp:HyperLink ID="HyperLink12" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/editprofile.aspx">Edit Profile</asp:HyperLink>
                        </td>
                        <td style="background-color: #CCCCFF" class="auto-style36">
                            <asp:HyperLink ID="HyperLink13" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/changepassword.aspx">Change Password</asp:HyperLink>
                        </td>
                        <td style="background-color: #CCCCFF" class="auto-style35">
                            <asp:HyperLink ID="HyperLink14" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/noticeboard.aspx">Notice Board</asp:HyperLink>
                        </td>
                        <td style="background-color: #CCCCFF">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/vote.aspx">Vote</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style17" style="background-color: #FFFF99;">Name:</td>
                        <td class="auto-style18" style="background-color: #FFFF99">
                            <asp:Label ID="LabelName1" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                        <td class="auto-style26">Password:</td>
                        <td class="auto-style27">
                            <asp:Label ID="LabelPassword" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">User Name:</td>
                        <td class="auto-style25">
                            <asp:Label ID="LabelUname" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                        <td class="auto-style22" style="background-color: #FFFF99;">State:</td>
                        <td class="auto-style23" style="background-color: #FFFF99">
                            <asp:Label ID="LabelBranch" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20" style="background-color: #FFFF99;">Adhar No.:</td>
                        <td class="auto-style21" style="background-color: #FFFF99">
                            <asp:Label ID="LabelRollNo" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                        <td class="auto-style19">Address:</td>
                        <td>
                            <asp:Label ID="LabelAddress" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Gender:</td>
                        <td class="auto-style18">
                            <asp:Label ID="LabelGender" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                        <td class="auto-style19" style="background-color: #FFFF99;">Email:</td>
                        <td style="background-color: #FFFF99">
                            <asp:Label ID="LabelEmail" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" style="background-color: #FFFF99;">Mobile No.:</td>
                        <td class="auto-style18" style="background-color: #FFFF99">
                            <asp:Label ID="LabelMobileNo" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                        <td class="auto-style19">Security Answer:</td>
                        <td>
                            <asp:Label ID="LabelSans" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Security Question:</td>
                        <td class="auto-style18">
                            <asp:Label ID="LabelSquest" runat="server" ForeColor="Blue" Font-Bold="False"></asp:Label>
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

