<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="circular.aspx.cs" Inherits="circular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" EnableModelValidation="true" DataKeyNames="notice_path" AutoGenerateColumns="False" EnableTheming="True" HorizontalAlign="Center" BorderStyle="Solid" BorderWidth="2px" BackColor="#66FFFF">
                    <AlternatingRowStyle BackColor="#CCFFFF" />
                    <Columns>
                        <asp:TemplateField HeaderText="Sr.No.">
                            <ItemTemplate>
                                <asp:Label ID="lblsn" runat="server">
                                    <%#((GridViewRow)Container).RowIndex+1%>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label ID="lbldate" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Title">
                            <ItemTemplate>
                                <asp:Label ID="lbltitle" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText=" ">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="38px" ImageUrl="~/images/download.gif" Width="163px" OnClick="ImageButton2_Click"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                    <HeaderStyle BackColor="#00CCFF" BorderStyle="Solid" BorderWidth="2px" />
                </asp:GridView>
</asp:Content>

