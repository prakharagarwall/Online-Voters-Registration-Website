<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminactivateuser.aspx.cs" Inherits="adminactivateuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            width: 343px;
        }
        .auto-style15 {
            width: 225px;
            height: 105px;
        }
        .auto-style17 {
            width: 193px;
            height: 105px;
        }
        .auto-style18 {
            width: 985px;
        }
        .auto-style19 {
            width: 258px;
        }
        .auto-style20 {
            width: 409px;
        }
        .auto-style21 {
            width: 560px;
        }
        .auto-style22 {
            height: 74px;
        }
        .auto-style23 {
            width: 560px;
            height: 39px;
        }
        .auto-style25 {
            width: 985px;
            height: 39px;
        }
        .auto-style26 {
            height: 39px;
            width: 409px;
        }
        .auto-style28 {
               width:205px;
               height: 30px;
           }
        .auto-style29 {
            width: 161px;
        }
        .auto-style30 {
            width: 473px;
        }
        .auto-style31 {
            height: 39px;
            width: 473px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" cellpadding="0" cellspacing="0" style="background-color: #FFFFCC; " class="auto-style8">
        <tr>
            <td style="border-color: #CCCCCC; border-width: thin; background-color: #FFFF99; border-bottom-style: solid;" class="auto-style3" colspan="6">
                WELCOME:&nbsp;
                <asp:Label ID="LabelUname" runat="server"></asp:Label>
            </td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right;" class="auto-style17">
                &nbsp;</td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right; vertical-align: top;" class="auto-style15" colspan="3">
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
            <td style="border: thin solid #FFFFFF;text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/adminactivate.aspx">Activate Acount</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF;  background-color: #CCCCCC; text-align: center;" class="auto-style28">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/adminviewuser.aspx">View All User</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style28">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/adminsearchuser.aspx">Search User</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style28">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/adminblockuser.aspx">Block User</asp:HyperLink>
                &nbsp;</td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style28">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/adminupdaterecord.aspx">Manage Users</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style28">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/adminupdatenotice.aspx">Update Notice</asp:HyperLink>
            </td><td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/admindeletenotice.aspx">Delete Notice</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style28">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/adminviewfeedback.aspx">View Feedback</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style28">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/adminmanagejobs.aspx">Manage Voting</asp:HyperLink>
            </td><td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style28">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/changeadminpassword.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="10" style="text-align: center; " class="auto-style1">
                <table style="height: 351px; width: 1076px; font-size: large; background-color: #FFFFCC;">
                    <tr>
                        <td style="text-align: left; background-color: #66CCFF;" class="auto-style20">&nbsp; Name:</td>
                        <td  style="text-align: left; background-color: #66CCFF;" class="auto-style21">
                            &nbsp;<asp:Label ID="LabelName1" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="auto-style30" style="text-align: left; background-color: #CCCCFF;" >&nbsp;Password:</td>
                        <td class="auto-style18" style="text-align: left; background-color: #CCCCFF;" >
                            &nbsp;<asp:Label ID="LabelPassword" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td style="text-align: left;" rowspan="8" class="auto-style29">
                            &nbsp;<asp:Image ID="Image1" runat="server" Height="175px" style="margin-right: 0px" Width="160px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20" style="text-align: left; background-color: #CCCCFF;" >&nbsp; Voter Id:</td>
                        <td class="auto-style21" style="text-align: left; background-color: #CCCCFF;" >
                            &nbsp;<asp:Label ID="LabelUname1" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td  style="text-align: left; background-color: #66CCFF;" class="auto-style30">&nbsp; State:</td>
                        <td  style="text-align: left; background-color: #66CCFF;" class="auto-style18">
                            &nbsp;<asp:Label ID="LabelBranch" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td  style="text-align: left; background-color: #66CCFF;" class="auto-style20">&nbsp; Adhar No.:</td>
                        <td  style="text-align: left; background-color: #66CCFF;" class="auto-style21">
                            &nbsp;<asp:Label ID="LabelRollNo" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="auto-style30" style="text-align: left; background-color: #CCCCFF;">&nbsp;Address:</td>
                        <td class="auto-style18" style="text-align: left; background-color: #CCCCFF;">
                            &nbsp;<asp:Label ID="LabelAddress" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20" style="text-align: left; background-color: #CCCCFF;">&nbsp; Gender:</td>
                        <td class="auto-style21" style="text-align: left; background-color: #CCCCFF;">
                            &nbsp;<asp:Label ID="LabelGender" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td style="text-align: left; background-color: #66CCFF;" class="auto-style30">&nbsp;Email:</td>
                        <td style="text-align: left; background-color: #66CCFF;" class="auto-style18">
                            &nbsp;<asp:Label ID="LabelEmail" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; background-color: #66CCFF;" class="auto-style20">&nbsp; Mobile No.:</td>
                        <td style="text-align: left; background-color: #66CCFF;" class="auto-style21">
                            &nbsp;<asp:Label ID="LabelMobileNo" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="auto-style31" style="text-align: left; background-color: #CCCCFF;" >&nbsp;Security Answer:</td>
                        <td class="auto-style25" style="text-align: left; background-color: #CCCCFF;">
                            &nbsp;<asp:Label ID="LabelSans" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26" style="text-align: left; background-color: #CCCCFF;" >&nbsp; Security Question:</td>
                        <td class="auto-style23" style="text-align: left; background-color: #CCCCFF;" >
                            &nbsp;<asp:Label ID="LabelSquest" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td class="auto-style31" style="text-align: left; background-color: #CCCCFF;" >&nbsp;</td>
                        <td class="auto-style25" style="text-align: left; background-color: #CCCCFF;">
                            &nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style22" colspan="4" style="background-color: #FFFFCC" >
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Deactivate</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>