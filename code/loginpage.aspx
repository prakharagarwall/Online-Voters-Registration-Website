<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
    function login()
    {
    var a = document.getElementById('<%=DropDownListSelectUser.ClientID%>').value;
    if (a == "Select")
    {
        alert('Please Select User Type');
        return false;
    }

}
    </script>

    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style14 {
            height: 67px;
        }
        .auto-style24 {
            height: 19px;
            width: 289px;
        }
        .auto-style25 {
            width: 289px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" class="auto-style11">
        <tr>
            <td class="auto-style14" colspan="2" style="text-align: center"><h3 style="color: #FF0000; text-decoration: blink; font-size: x-large;">Welcome to Login Page...!&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </h3></td>
        </tr>
        <tr>
            <td class="auto-style24" style="text-align: right">
                <br />
                <asp:Image ID="Image4" runat="server" Height="50px" ImageUrl="~/images/loghere1.jpg" Width="251px" />
                <br />
            </td>
            <td rowspan="3">
                <asp:Image ID="Image3" runat="server" Height="300px" ImageUrl="~/images/login.jpg" Width="840px" style="margin-left: 13px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style25">Select User Type:&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownListSelectUser" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br /><asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
 
                <br />
                User Name:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextUname" runat="server" Height="16px" Width="115px"></asp:TextBox>
                <asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" TargetControlID="TextUname" BalloonPopupControlID="Label3" BalloonSize="Small" CacheDynamicResults="True" DisplayOnMouseOver="True" ScrollBars="Auto" UseShadow="True">
                </asp:BalloonPopupExtender>
                <asp:Label ID="Label3" runat="server" Text="Enter User Name Here.."></asp:Label>
                <br />
                <br />
                Password:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextPass" runat="server" TextMode="Password" Height="18px" Width="117px"></asp:TextBox>
                <asp:BalloonPopupExtender ID="Label2_BalloonPopupExtender" runat="server" DisplayOnMouseOver="true" UseShadow="true" TargetControlID="TextPass" BalloonPopupControlID="Label2" CacheDynamicResults="True">
                </asp:BalloonPopupExtender>
                <asp:Label ID="Label2" runat="server" Text="Enter Password Here.."></asp:Label>
                <br />
                <br />
                Profile Image:&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Width="143px" Height="20px" />
&nbsp;<br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" OnClientClick="return login()" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Image ID="picEmp" runat="server" Visible="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
&nbsp;<br />
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/forgetpassward.aspx">	Forgot your password?</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br /><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registrationpage.aspx">	Register here..!! </asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style25" style="text-align: center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
    </table>
</asp:Content>

