<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="registrationpage.aspx.cs" Inherits="registrationpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 422px;
        }
        .auto-style13 {
            width: 409px;
        }
        .auto-style14 {
            width: 449px;
        }
        .auto-style15 {
            width: auto;
            height: auto;
        }
        .auto-style16 {
            width: auto;
            height: 12px;
        }
        .auto-style17 {
            width: auto;
            height: auto;
        }
        .auto-style18 {
            width: 449px;
            height: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">

        <table cellpadding="0" class="auto-style11" style="padding: 2px; width: 1124px; height: 409px;">
            <caption>
                <marquee behavior="alternate"> You Can Register Here
                </marquee>
                <tr>
                    <td class="auto-style13" style="text-align: right">Your Name:</td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextName" runat="server" PlaceHolder="Enter plz"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextName" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11" rowspan="14">
                        <asp:Image ID="Image3" runat="server" Height="409px" ImageUrl="~/images/reg.jpg" style="margin-left: 0px; margin-top: 0px;" Width="353px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="text-align: right">Voter ID:</td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Textvid" runat="server" AutoPostBack="True" OnTextChanged="TextUname_TextChanged"></asp:TextBox>
&nbsp;<asp:Label ID="LabelUname" runat="server" ForeColor="Red"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textvid" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="text-align: right">Adhar No.:</td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Textadhar" runat="server" AutoPostBack="True" OnTextChanged="TextUname_TextChanged"></asp:TextBox>
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Textadhar" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="text-align: right">
                        Password</td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextPass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextPass" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="text-align: right">Confirm Password</td>
                    <td class="auto-style14">&nbsp;&nbsp;
                        <asp:TextBox ID="TextPass1" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPass" ControlToValidate="TextPass1" ErrorMessage="Password do not match" ValidationGroup="g1"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" style="text-align: right">Gender:</td>
                    <td class="auto-style16">
                        <asp:RadioButtonList ID="RadioButtonListgender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="RadioButtonListgender" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" style="text-align: right">Address:</td>
                    <td class="auto-style18">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextAddress" runat="server" Height="25px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextAddress" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="text-align: right">State:</td>
                    <td class="auto-style14">&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownListstate" runat="server" Height="22px" Width="140px">
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListState" Display="Dynamic" ErrorMessage="Please Select Branch" InitialValue="Select your Branch" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="text-align: right">Mob. No.:</td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextMobileNo" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextMobileNo" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextMobileNo" Display="Dynamic" ErrorMessage="Please Enter Correct Mobile No" ValidationExpression="^[0-9]{10}$" ValidationGroup="g1"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="text-align: right">Email ID:</td>
                    <td class="auto-style14">&nbsp;&nbsp;
                        <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextEmail" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" Display="Dynamic" ErrorMessage="Please Enter Correct Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="g1"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <caption>
                    &lt;
                    <tr>
                        <td class="auto-style13" style="text-align: right">Submit Your Profile Pic.:</td>
                        <td class="auto-style14">&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUploadImage" runat="server" />
                            <asp:Label ID="LabelImage" runat="server" ForeColor="Red"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="FileUploadImage" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13" style="text-align: right">Security Question:</td>
                        <td class="auto-style14">&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownListQuest" runat="server" Height="22px" Width="140px">
                                <asp:ListItem>Select a Question</asp:ListItem>
                                <asp:ListItem>Your Home Town</asp:ListItem>
                                <asp:ListItem>Your best friend</asp:ListItem>
                                <asp:ListItem>Your Birth Place</asp:ListItem>
                                <asp:ListItem>Your Nick Name</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListQuest" Display="Dynamic" ErrorMessage="Please Select Question" InitialValue="Select a Question" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" style="text-align: right">Security Answer:</td>
                        <td class="auto-style18">&nbsp;&nbsp;
                            <asp:TextBox ID="TextAns" runat="server"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextAns" Display="Dynamic" ErrorMessage="Please Fill Out This Field" ValidationGroup="g1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13" style="text-align: right">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" ValidationGroup="g1" />
                            &nbsp;&nbsp; </td>
                        <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="Reset1" type="reset" value="Reset" />
                        </td>
                    </tr>
                </caption>
            </caption>
    </table>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">

        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

