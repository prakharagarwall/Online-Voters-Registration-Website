<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Registration2.aspx.cs" Inherits="Registration2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 422px;
        }
        .auto-style13 {
        }
        .auto-style14 {
            width: 449px;
        }
        .auto-style15
        {
            width: 382px;
        }
        .auto-style16
        {
            width: 423px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">

        <table cellpadding="0" class="auto-style11" style="padding: 2px; width: 1124px; height: 409px;">
        <tr>
            <td class="auto-style13" style="text-align: center"  colspan="4">You are not activated yet plz insert your OTP</td>
        </tr>
            <tr>
                <td class="auto-style16" style="text-align: right">&nbsp;Enter One Time Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" Width="161px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Submit" />
                </td>
                <td class="auto-style11">
                    <asp:Image ID="Image3" runat="server" Height="409px" ImageUrl="~/images/reg.jpg" style="margin-left: 0px; margin-top: 0px;" Width="353px" />
                </td>
            </tr>
    </table>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">

        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    </p>

        <p>
            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>

    </asp:Panel>
</asp:Content>

