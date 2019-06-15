<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminsearchuser.aspx.cs" Inherits="adminsearchuser" %>

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
               width: 347px;
           }
           .auto-style14 {
               width: 100%;
               height: 185px;
           }
           .auto-style15 {
           }
           .auto-style16 {
               height: 37px;
           }
           .auto-style17 {
               height: 29px;
           }
           .auto-style18 {
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
           .auto-style22 {
               width: auto;
               height: 37px;
           }
           .auto-style24 {
               width: auto;
           }
           .auto-style25 {
               width: 648px;
               height: 46px;
           }
           .auto-style26 {
               height: 46px;
           }
           .auto-style27 {
               width: 205px;
               height: 21px;
           }
           .auto-style31 {
               width: 510px;
           }
           .auto-style32 {
               width: 1132px;
               height: 38px;
        }
           .auto-style33 {
               width: 512px;
           }
           .auto-style34 {
               width: 346px;
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
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right;" class="auto-style18">
                &nbsp;</td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right; vertical-align: top;" class="auto-style18" colspan="3">
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
            <td style="border: thin solid #FFFFFF; text-align: center;" class="auto-style19">
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
            </td><td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/admindeletenotice.aspx">Delete Notice</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/adminviewfeedback.aspx">View Feedback</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/adminmanagejobs.aspx">Manage Voting</asp:HyperLink>
            </td><td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/changeadminpassword.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="10" class="auto-style1">
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style15" style="text-align: right" colspan="2">
                            <table class="auto-style22">
                                <tr>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style13" style="text-align: center; font-size: large; color: #FF0000; background-color: #66CCFF">Search Users Here</td>
                                    <td class="auto-style24">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25" style="text-align: right">Enter Name:&nbsp;&nbsp; </td>
                        <td class="auto-style26">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; color: #FF0000;" class="auto-style27">OR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style25" style="text-align: right">Voter Id:&nbsp;&nbsp; </td>
                        <td class="auto-style26">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16" colspan="2" style="text-align: center; color: #FF0000;">
                        <table class="auto-style32">
                                <tr>
                                    <td class="auto-style33">&nbsp;</td>
                                    <td class="auto-style34" style="text-align: center; font-size: large; color: #FF0000; background-color: #66CCFF">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search User" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>    
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" colspan="2" style="text-align: center; color: #FF0000;">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <div style="text-align:center"><center><asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center" BorderStyle="Solid" BorderWidth="2px">
                    <AlternatingRowStyle BackColor="#CCFFFF" />
                    <HeaderStyle BackColor="#66CCFF" BorderStyle="Solid" BorderWidth="2px" />
                </asp:GridView></center></div>
                <br />
                <br />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
