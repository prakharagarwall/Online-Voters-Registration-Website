<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
            .auto-style12 {
            width: 100%;
            height: 454px;
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
                width: 86%;
                height: 230px;
            }
            .auto-style17 {
                height: 38px;
            }
            .auto-style18 {
                width:100%;
                height: 29px;
            }
            .auto-style19 {
                width: 287px;
            }
            .auto-style20 {
                width: 288px;
            }
            .auto-style21 {
                width: 178px;
            }
            .auto-style22 {
                width: 367px;
                height: 37px;
            }
            .auto-style23 {
                height: 37px;
            }
            .auto-style25 {
                height: 38px;
                width: auto;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style12">
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
            <td class="auto-style15" colspan="3" style=" text-align: center; background-color: #FFFFCC">
                <table class="auto-style18">
                    <tr>
                        <td style="background-color: #CCCCFF" class="auto-style19">
                            <asp:HyperLink ID="HyperLink11" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/viewprofile.aspx">View Profile</asp:HyperLink>
                        </td>
                        <td style="background-color: #CCCCFF" class="auto-style19">
                            <asp:HyperLink ID="HyperLink12" runat="server" Font-Bold="False" ForeColor="Blue" NavigateUrl="~/editprofile.aspx">Edit Profile</asp:HyperLink>
                        </td>
                        <td style="background-color: #FFFFCC; font-weight: bold;" class="auto-style20">
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
            <td colspan="3" background-color: #FFFFCC style="background-color: #FFFFCC">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <br />
                <table class="auto-style16">
                    <tr>
                        <td style="text-align: right" class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td style="text-align: center; background-color: #FF99CC;" class="auto-style23" colspan="4">Change Password Here</td>
                        <td class="auto-style23">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" class="auto-style21" colspan="3">Enter Old Password:</td>
                        <td colspan="3">
                            <asp:TextBox ID="TextOldPass" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextOldPass" Display="Dynamic" ErrorMessage="Please Enter Old Password" ValidationGroup="g3"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label2" runat="server" Text="Enter Old Password Here"></asp:Label><asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" BalloonPopupControlID="Label2" BalloonStyle="Cloud" TargetControlID="TextOldPass"></asp:BalloonPopupExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" class="auto-style21" colspan="3">Enter New Password:</td>
                        <td colspan="3">
                            <asp:TextBox ID="TextNewPass" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextNewPass" Display="Dynamic" ErrorMessage="Please Enter New Password" ValidationGroup="g3"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label3" runat="server" Text="Enter New Password Here"></asp:Label><asp:BalloonPopupExtender ID="BalloonPopupExtender2" runat="server" BalloonStyle="Cloud" BalloonPopupControlID="Label3" TargetControlID="TextNewPass"></asp:BalloonPopupExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right" class="auto-style21" colspan="3">Confirm New Password:</td>
                        <td colspan="3">
                            <asp:TextBox ID="TextConfimPass" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextConfimPass" Display="Dynamic" ErrorMessage="Please Enter New Password" ValidationGroup="g3"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextNewPass" ControlToValidate="TextConfimPass" Display="Dynamic" ErrorMessage="Password do not Match" ValidationGroup="g3"></asp:CompareValidator>
                            <asp:Label ID="Label4" runat="server" Text="Confirm Password Here"></asp:Label><asp:BalloonPopupExtender ID="BalloonPopupExtender3" runat="server" BalloonStyle="Cloud" BalloonPopupControlID="Label4" TargetControlID="TextConfimPass"></asp:BalloonPopupExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" colspan="2" style="text-align: center">
                            <br />
                        </td>
                        <td class="auto-style25" colspan="2" style="text-align: center; background-color: #FF99CC;">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Changes" ValidationGroup="g3" />
                        </td>
                        <td class="auto-style17" colspan="2" style="text-align: center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: center">
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

