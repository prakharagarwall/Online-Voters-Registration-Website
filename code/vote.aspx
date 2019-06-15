<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="vote.aspx.cs" Inherits="vote" %>

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
               height: 264px;
           }
           .auto-style17 {
            }
           .auto-style18 {
               width: 346px;
           }
           .auto-style19 {
               width: 163px;
           }
            .auto-style20 {
                width: 202px;
            }
            .auto-style21 {
                width: 100%;
                height: 31px;
            }
            .auto-style22 {
                width: 287px;
            }
            .auto-style23 {
                width: 288px;
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
            &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="3" style="background-color: #FFFFCC; text-align: center;">
                <table class="auto-style21">
                    <tr>
                        <td style="background-color: #CCCCFF" class="auto-style22">
                            <asp:HyperLink ID="HyperLink11" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/viewprofile.aspx">View Profile</asp:HyperLink>
                        </td>
                        <td style="background-color: #FFFFCC" class="auto-style22">
                            <asp:HyperLink ID="HyperLink12" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/editprofile.aspx">Edit Profile</asp:HyperLink>
                        </td>
                        <td style="background-color: #CCCCFF" class="auto-style23">
                            <asp:HyperLink ID="HyperLink13" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/changepassword.aspx">Change Password</asp:HyperLink>
                        </td>
                        <td style="background-color: #CCCCFF">
                            <asp:HyperLink ID="HyperLink14" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/noticeboard.aspx">Notice Board</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                
            </td>
        </tr>
    </table>
</asp:Content>

