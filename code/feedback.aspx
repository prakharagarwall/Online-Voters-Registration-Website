<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 99%;
            height: 290px;
        }
        .auto-style14 {
            width: 527px;
        }
        .auto-style15 {
            height: 48px;
        }
        .auto-style16 {
            width: 100%;
            height: 31px;
        }
        .auto-style17 {
            width: 395px;
            height: 40px;
        }
        .auto-style18 {
            width: 338px;
            height: 40px;
        }
        .auto-style19 {
            height: 40px;
            color: #FF3399;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style13">
        <tr>
            <td colspan="2" class="auto-style15" style="text-align: center; font-weight: bold; color: #FF0000; font-size: large;">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style17"></td>
                        <td class="auto-style18" style="background-color: blueviolet">Please Give Your Feedback</td>
                        <td class="auto-style19"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="text-align: right">Enter Your Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Fill Out This Field..!" Display="Dynamic" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="text-align: right">Enter Your Email:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Fill Out This Field..!" Display="Dynamic" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="text-align: right">Give Feedback:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Fill Out This Field..!" Display="Dynamic" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style17"></td>
                        <td class="auto-style18" style="background-color: #00CCFF">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Submit" ValidationGroup="g1" />
                        </td>
                        <td class="auto-style19"></td>
                    </tr>
                </table>

            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

