<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="registersuccessfully.aspx.cs" Inherits="registersuccessfully" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 560px;
        }
        .auto-style14 {
            width: 931px;
        }
        .auto-style15 {
            height: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 278px; width: 1178px;">
<tr>
            <td colspan="2" style="text-align: center; font-family: 'Arial Black'; font-style: italic; color: #FF3399; text-decoration: blink;" class="auto-style15">
                <font color="#8B0000" size="12"><b>Welcome to Online Voting System&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></font></td>
        </tr>
        <tr>
            <td class="auto-style14">
                <p style="text-align: center">
                    <font color="blue" size="5">WELCOME&nbsp;
                    <asp:Label ID="LabelName" runat="server" ForeColor="Blue"></asp:Label></font>
                    <br />
                    <br />
                   <font color="red"> You have Registered Successfully..!!! </br> Your acoount will be activate after the varification!!! </br> It may take 24 hour!!!!</font><br />
                    <br />
                    Your User Name:
                    <asp:Label ID="LabelUname" runat="server"></asp:Label>
                    <br />
                    Your Password:&nbsp;
                    <asp:Label ID="LabelPass" runat="server"></asp:Label>
                    <br />
                    <br />
                    <font color="red">You can Login after 24 hours!!!!</font><br />
                </p>
            </td>
            <td class="auto-style13">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/registered.png" Height="189px" />
            </td>
        </tr>
    </table>
    <br />
    <p style="text-align: center">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/images/reghere.PNG" Width="149px" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/images/loghere.jpg" OnClick="ImageButton2_Click" Width="158px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
</asp:Content>

