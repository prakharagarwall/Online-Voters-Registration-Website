<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="viewfullrecentjobs.aspx.cs" Inherits="viewfullrecentjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 99%;
            margin-left: 0px;
        }
        .auto-style14 {
            height: 53px;
        }
        .auto-style19 {
            width: 256px;
        }
        .auto-style20 {
            height: 53px;
            width: 256px;
        }
        .auto-style23 {
        }
        .auto-style24 {
            height: 53px;
            width: 122px;
        }
        .auto-style25 {
        }
        .auto-style26 {
            height: 53px;
            width: 127px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1185px"><tr><td>
    <table class="auto-style13" style="border: medium none #000000; height: 386px;">
        <tr>
            <td class="auto-style23" colspan="2" style="background-color: #66CCFF; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Posting Date:</td>
            <td class="auto-style25" colspan="2" style="background-color: #66CCFF">&nbsp;&nbsp;
                <asp:Label ID="lblpostdate" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" style="background-color: #99CCFF">&nbsp; Job Title:</td>
            <td class="auto-style19" style="background-color: #99CCFF">
                <asp:Label ID="lbljobtitle" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style25" style="background-color: #99CCFF">&nbsp; Last Date:</td>
            <td style="background-color: #99CCFF">
                <asp:Label ID="lbllastdate" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" style="background-color: #66CCFF">&nbsp; Job Description:</td>
            <td class="auto-style20" style="background-color: #66CCFF">
                <asp:Label ID="lbljobdescription" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style25" style="background-color: #66CCFF">&nbsp; Company Name:</td>
            <td style="background-color: #66CCFF">
                <asp:Label ID="lblcompany" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" style="background-color: #99CCFF">&nbsp; Experience:</td>
            <td class="auto-style20" style="background-color: #99CCFF">
                <asp:Label ID="lblexp" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style26" style="background-color: #99CCFF">&nbsp; Job Location:</td>
            <td class="auto-style14" style="background-color: #99CCFF">
                <asp:Label ID="lbllocation" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" style="background-color: #66CCFF">&nbsp; Qualification:</td>
            <td class="auto-style19" style="background-color: #66CCFF">
                <asp:Label ID="lblqual" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style26" style="background-color: #66CCFF">&nbsp; Technology:</td>
            <td class="auto-style14" style="background-color: #66CCFF">
                <asp:Label ID="lbltechnology" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" style="background-color: #99CCFF">&nbsp; Package:</td>
            <td class="auto-style19" style="background-color: #99CCFF">
                <asp:Label ID="lblpackage" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style25" style="background-color: #99CCFF">&nbsp; Criteria:</td>
            <td style="background-color: #99CCFF">
                <asp:Label ID="lblcriteria" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="background-color: #66CCFF;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Go Back" PostBackUrl="~/recentjobs.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
    </table></td>
        <td>
            <asp:Image ID="Image3" runat="server" Height="373px" ImageUrl="~/images/vacancies1.jpg" Width="397px" />
        </td>
        </tr>
        
    </table>
</asp:Content>

