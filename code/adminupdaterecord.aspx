﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminupdaterecord.aspx.cs" Inherits="adminupdaterecord" %>

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
               width: 367px;
           }
           .auto-style14 {
               width: 225px;
               height: 105px;
           }
           .auto-style19 {
               width:205px;
               height: 30px;
           }
           .abc {
            text-align:center;
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
            <td style="border: thin solid #FFFFFF; text-align: center; " class="auto-style19">
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
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/adminmanagejobs.aspx">Manage Voting</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/changeadminpassword.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="10" class="auto-style1" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="60px" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" Font-Size="11pt" ShowFooter="True" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <AlternatingRowStyle BackColor="#CCFFFF" />
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No.">
                            <EditItemTemplate>
                                <asp:Label ID="lblsn1" runat="server"></asp:Label>
                                <%#((GridViewRow)Container).RowIndex+1%>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblsn" runat="server"></asp:Label>
                                <%#((GridViewRow)Container).RowIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Voter Id" >
                            <EditItemTemplate>
                                <asp:Label ID="lbluname1" runat="server" Text='<%# bind("voterid") %>'></asp:Label>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextUname" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbluname" runat="server" Text='<%# bind("voterid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Password">
                            <EditItemTemplate>
                                <asp:TextBox ID="Textpass" runat="server" Text='<%# bind("password") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextPass" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblpass" runat="server" Text='<%# bind("password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="Textstname" runat="server" Text='<%# bind("name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextStuName" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblstname" runat="server" Text='<%# bind("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Adhar No.">
                            <EditItemTemplate>
                                <asp:TextBox ID="Textrollno" runat="server" Text='<%# bind("adhar_no") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextRollNo" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblrollno" runat="server" Text='<%# bind("adhar_no") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State">
                            <EditItemTemplate>
                                <asp:TextBox ID="Textbranch" runat="server" Text='<%# bind("state") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextBranch" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblbranch" runat="server" Text='<%# bind("state") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <EditItemTemplate>
                                <asp:TextBox ID="Textgender" runat="server" Text='<%# bind("gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextGender" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblgender" runat="server" Text='<%# bind("gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="Textaddr" runat="server" Text='<%# bind("addr") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextAddr" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbladdr" runat="server" Text='<%# bind("addr") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile No.">
                            <EditItemTemplate>
                                <asp:TextBox ID="Textmobileno" runat="server" Text='<%# bind("mobile_no") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextMobileNo" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblmobileno" runat="server" Text='<%# bind("mobile_no") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="Textemail" runat="server" style="margin-bottom: 0px" Text='<%# bind("email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TextEmail" runat="server" Width="100px"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblemail" runat="server" Text='<%# bind("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="Operation">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Update">Update</asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Create New User</asp:LinkButton>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle CssClass="abc" VerticalAlign="Middle" />
                    <HeaderStyle BackColor="#66CCFF" BorderWidth="2px" />
                    <SelectedRowStyle Wrap="True" />
                </asp:GridView>
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
