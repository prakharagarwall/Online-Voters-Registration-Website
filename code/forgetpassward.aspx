<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="forgetpassward.aspx.cs" Inherits="forgetpassward" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
        Enter Your User&nbsp; Name:&nbsp;&nbsp;
        <asp:TextBox ID="TextUname" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <br />
        <br />
        <asp:Label ID="LbUnameMsg" runat="server" ForeColor="Red"></asp:Label>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" Visible="False" HorizontalAlign="Center">
        Your Security Question:
        <asp:Label ID="Lbsquest" runat="server" ForeColor="#0033CC"></asp:Label>
        <br />
        <br />
        Answer:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextSans" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Get Password" />
        <br />
        <br />
        <asp:Label ID="LbPassmsg" runat="server" ForeColor="Red"></asp:Label>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel3" runat="server" Visible="False" HorizontalAlign="Center">
        Your Password is&nbsp;send to your mobile no.&nbsp;
        <asp:Label ID="LbPass" runat="server" ForeColor="Red"></asp:Label>
    </asp:Panel>
</asp:Content>

