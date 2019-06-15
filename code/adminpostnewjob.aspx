<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpostnewjob.aspx.cs" Inherits="adminpostnewjob" %>

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
               width: 353px;
           }
           .auto-style14 {
               width: 225px;
               height: 105px;
           }
           .auto-style19 {
               width:205px;
               height: 30px;
           }
           .auto-style24 {
               width: 100%;
           }
           .auto-style20 {
               width: 85%;
           }
           .auto-style22 {
               height: 21px;
           }
           .auto-style23 {
               height: 23px;
           }
           .auto-style25 {
               width: 258px;
           }
           .auto-style26 {
               height: 21px;
               width: 229px;
           }
           .auto-style27 {
               width: 229px;
           }
           .auto-style28 {
               height: 23px;
               width: 229px;
           }
           .auto-style29 {
               width: 497px;
           }
           .auto-style30 {
               height: 36px;
           }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" cellpadding="0" cellspacing="0" style="background-color: #FFFFCC; " class="auto-style8">
        <tr>
            <td style="border-color: #CCCCCC; border-width: thin; background-color: #FFFF99; border-bottom-style: solid;" class="auto-style3" colspan="5">
                WELCOME:&nbsp;
                <asp:Label ID="LabelUname" runat="server"></asp:Label>
            </td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right;" class="auto-style14">
                &nbsp;</td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right; vertical-align: top;" class="auto-style14" colspan="3">
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
            </td><td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/admindeletenotice.aspx">Delete Notice</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/adminviewfeedback.aspx">View Feedback</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; text-align: center; font-weight: bold;" class="auto-style19">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/adminmanagejobs.aspx">Manage Jobs</asp:HyperLink>
            </td><td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/changeadminpassword.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="9" class="auto-style1">
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style25">&nbsp;</td>
                        <td class="auto-style29">
              <table class="auto-style20" style="background-color: #FFCCFF; height: 480px;">
                    <tr>
                        <td class="auto-style30" colspan="2" style="text-align: center; font-size: large; color: #FF0000; text-decoration: underline;">Post Job Here</td>
                    </tr>
                    <tr>
                        <td class="auto-style22" style="text-align: right">Posting Date:&nbsp; </td>
                        <td class="auto-style26">
                            <asp:Label ID="LabelPostingDate" runat="server"></asp:Label>
                        &nbsp; <font color=blue>(MM/DD/YYYY)</font></td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Job Title:&nbsp; </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextJobTitle" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextJobTitle" Display="Dynamic" ErrorMessage="Please Fill Out This Field...!!!" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Job Description:&nbsp; </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextJobDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Job Location:&nbsp; </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextJobLocation" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Company Name:&nbsp; </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextCompanyName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextCompanyName" Display="Dynamic" ErrorMessage="Please Fill Out This Field...!!!" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Technology:&nbsp; </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextTechnology" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Criteria:&nbsp; </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextCriteria" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Experience:&nbsp; </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextExperience" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Qualification:&nbsp; </td>
                        <td class="auto-style27">
                            <asp:DropDownList ID="DropDownListQual" runat="server">
                                <asp:ListItem Value="Select"></asp:ListItem>
                                <asp:ListItem>B.Tech</asp:ListItem>
                                <asp:ListItem>M.Tech</asp:ListItem>
                                <asp:ListItem>B.E.</asp:ListItem>
                                <asp:ListItem>BCA</asp:ListItem>
                                <asp:ListItem>BBA</asp:ListItem>
                                <asp:ListItem>MCA</asp:ListItem>
                                <asp:ListItem>MBA</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListQual" Display="Dynamic" ErrorMessage="Please Select Qualification...!!!" InitialValue="Select" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">Package(Yearly):&nbsp; </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="TextPackage" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23" style="text-align: right">Last Date for Apply:&nbsp; </td>
                        <td class="auto-style28">
                            <asp:TextBox ID="TextLastDate" runat="server"></asp:TextBox>
                        &nbsp;<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextLastDate" Display="Dynamic" ErrorMessage="Please Fill Out This Field...!!!" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextLastDate" Format="dd/MM/yyyy"></asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="Button2" runat="server" Text="Post Job" ValidationGroup="g1" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>
                        </td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="425px" ImageUrl="~/images/postjob.jpg" Width="367px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
