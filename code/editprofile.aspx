<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="editprofile" %>

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
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style20">Name:</td>
                        <td class="auto-style18">
                            <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" Display="Dynamic" ErrorMessage="Can't be Blank" ValidationGroup="g2"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style19" style="background-color: #FFFF99;">State:</td>
                        <td style="background-color: #FFFF99">
                            <asp:DropDownList ID="DropDownListBranch" runat="server" Height="22px" Width="140px">
                <asp:ListItem>Select Your State</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Rajsthan</asp:ListItem>
                <asp:ListItem>Jharkhand</asp:ListItem>
                <asp:ListItem>Gujrat</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Tamilnadu</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Orisa</asp:ListItem>
                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownListBranch" Display="Dynamic" ErrorMessage="Please Select Branch" ValidationGroup="g2" InitialValue="Select your Branch"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="auto-style20" style="background-color: #FFFF99;">Adhar No.:</td>
                        <td class="auto-style18" style="background-color: #FFFF99">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style19">Address:</td>
                        <td>
                            <asp:TextBox ID="TextAddress" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextAddress" Display="Dynamic" ErrorMessage="Can't be Blank" ValidationGroup="g2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">Gender:</td>
                        <td class="auto-style18">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="auto-style19" style="background-color: #FFFF99;">Email:</td>
                        <td style="background-color: #FFFF99">
                            <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextEmail" Display="Dynamic" ErrorMessage="Can't be Blank" ValidationGroup="g2"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextEmail" ErrorMessage="Enter Correct Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="g2"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20" style="background-color: #FFFF99;">Mobile No.:</td>
                        <td class="auto-style18" style="background-color: #FFFF99">
                            <asp:TextBox ID="TextMobileNo" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextMobileNo" Display="Dynamic" ErrorMessage="Can't be Blank" ValidationGroup="g2"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextMobileNo" Display="Dynamic" ErrorMessage="Enter Correct Roll No" ValidationExpression="^[0-9]+$" ValidationGroup="g2"></asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style19">Security Answer:</td>
                        <td>
                            <asp:TextBox ID="TextSans" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextSans" Display="Dynamic" ErrorMessage="Can't be Blank" ValidationGroup="g2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">Security Question:</td>
                        <td class="auto-style18">
                            <asp:DropDownList ID="DropDownsecques" runat="server" Height="22px" Width="140px">
                                <asp:ListItem>Your Home Town</asp:ListItem>
                                <asp:ListItem>Your best friend</asp:ListItem>
                                <asp:ListItem>Your Birth Place</asp:ListItem>
                                <asp:ListItem>Your Nick Name</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownsecques" Display="Dynamic" ErrorMessage="Can't be Blank" ValidationGroup="g2"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17" style="color: #FF0000; text-align: center; background-color: #FFFF99;" colspan="4">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Changes" ValidationGroup="g2" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

