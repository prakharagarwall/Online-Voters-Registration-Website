<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changeadminpassword.aspx.cs" Inherits="changeadminpassword" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <style type="text/css">
        .auto-style1 {
            height:auto ;
        }
        .auto-style3 {
            height: 105px;
        }
        .auto-style8 {
            width: 1355px;
            height: 646px;
        }
        .auto-style12 {
            width: 100%;
            height: 101px;
        }
        .auto-style13 {
               width: 371px;
           }
           .auto-style14 {
               width: 99%;
               height: 370px;
           }
           .auto-style15 {
           }
           .auto-style16 {
               height: 37px;
           }
           .auto-style17 {
               width: 225px;
               height: 105px;
           }
           .auto-style16 {
            height: 30px;
            width: 193px;
        }
           .auto-style19 {
               width:205px;
               height: 30px;
           }
           .auto-style20 {
               width: 100%;
               height: 47px;
           }
           .auto-style21 {
               width: 350px;
           }
           .auto-style22 {
               width: 491px;
           }
           .auto-style23 {
               width: 668px;
           }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" cellpadding="0" cellspacing="0" style="background-color: #FFFFCC; " class="auto-style8">
        <tr>
            <td style="border-color: #CCCCCC; border-width: thin; background-color: #FFFF99; border-bottom-style: solid;" class="auto-style3" colspan="6">
                WELCOME:&nbsp;
                <asp:Label ID="LabelUname" runat="server"></asp:Label>
            </td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right;" class="auto-style17">
                &nbsp;</td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right; vertical-align: top;" class="auto-style17" colspan="3">
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td rowspan="3">
                <asp:Image ID="ImageProfilePic" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" Height="103px" style="margin-bottom: 0px" Width="161px" ImageUrl="~/images/admin.png" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="LogOut" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
             <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/adminactivate.aspx">Activate Acount</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/adminviewuser.aspx">View All User</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/adminsearchuser.aspx">Search User</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/adminblockuser.aspx">Block User</asp:HyperLink>
                &nbsp;</td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/adminupdaterecord.aspx">Manage Users</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/adminupdatenotice.aspx">Update Notice</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/admindeletenotice.aspx">Delete Notice</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/adminviewfeedback.aspx">View Feedback</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/adminmanagejobs.aspx">Manage Jobs</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/changeadminpassword.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="10" class="auto-style1">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style15" style="text-align: right" colspan="2">
                            <table class="auto-style20">
                                <tr>
                                    <td class="auto-style22">&nbsp;</td>
                                    <td class="auto-style21" style="text-align: center; background-color: #66CCFF; font-size: x-large; color: #FF0000;">Change Password Here</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23" style="text-align: right">Enter Old Password:</td>
                        <td>
                            <asp:TextBox ID="Textoldpass" runat="server" Height="17px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textoldpass" Display="Dynamic" ErrorMessage="Please Fill Out This Field..!" ValidationGroup="g4"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label3" runat="server" Text="Enter Old Password Here"></asp:Label><asp:BalloonPopupExtender ID="BalloonPopupExtender2" runat="server" BalloonStyle="Cloud" BalloonPopupControlID="Label3" TargetControlID="Textoldpass"></asp:BalloonPopupExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23" style="text-align: right">Enter New Password:</td>
                        <td>
                            <asp:TextBox ID="Textnewpass" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textnewpass" Display="Dynamic" ErrorMessage="Please Fill Out This Field..!" ValidationGroup="g4"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label2" runat="server" Text="Enter New Password Here"></asp:Label><asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" BalloonStyle="Cloud" BalloonPopupControlID="Label2" TargetControlID="Textnewpass"></asp:BalloonPopupExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23" style="text-align: right">Confirm Password:</td>
                        <td>
                            <asp:TextBox ID="Textconpass" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Textnewpass" ControlToValidate="Textconpass" Display="Dynamic" ErrorMessage="Password do not Match..!" ValidationGroup="g4"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textconpass" ErrorMessage="Please Fill Out This Field..!" ValidationGroup="g4"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label4" runat="server" Text="Confirm Password Here"></asp:Label><asp:BalloonPopupExtender ID="BalloonPopupExtender3" runat="server" BalloonStyle="Cloud" BalloonPopupControlID="Label4" TargetControlID="Textconpass"></asp:BalloonPopupExtender>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                        <table class="auto-style20">
                                <tr>
                                    <td class="auto-style22">&nbsp;</td>
                                    <td class="auto-style21" style="text-align: center; background-color: #66CCFF; font-size: x-large; color: #FF0000;">
                            <asp:Button ID="Button2" runat="server" Text="Change Password" OnClick="Button2_Click" ValidationGroup="g4" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>    
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style16" style="text-align: center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
