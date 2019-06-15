<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="recentjobs.aspx.cs" Inherits="recentjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .a {
        text-align:center;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1185px"><tr><td>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" HorizontalAlign="Center" CssClass="a" BackColor="#CCFFFF" BorderStyle="Solid" BorderWidth="2px">
            <Columns>
                <asp:TemplateField HeaderText="Posting Date">
                    
                    <ItemTemplate>
                        <asp:Label ID="lblposdate" runat="server" Text='<%# bind("posting_date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job Title">
                    
                    <ItemTemplate>
                        <asp:Label ID="lbljobtitle" runat="server" Text='<%# bind("job_title") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Company Name">
                    
                    <ItemTemplate>
                        <asp:Label ID="lblcompname" runat="server" Text='<%# bind("company") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        <asp:Label ID="lblloc" runat="server" Text='<%# bind("job_location") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Date">
                    <ItemTemplate>
                        <asp:Label ID="lbllastdate" runat="server" Text='<%# bind("last_date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField HeaderText="View Full Job" DataNavigateUrlFields="job_title,company" DataNavigateUrlFormatString="viewfullrecentjobs.aspx?job_title={0}&company={1}" DataTextField="job_title" DataTextFormatString="View Full Detail"/>
            </Columns>
            <HeaderStyle BackColor="#00CCFF" BorderStyle="Solid" BorderWidth="2px" />
        </asp:GridView>
    </p></td>
        <td>
            <asp:Image ID="Image3" runat="server" Height="369px" ImageUrl="~/images/vacancies1.jpg" Width="392px" />
        </td>
        </tr>
        
    </table>
</asp:Content>

