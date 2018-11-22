<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon-contact-16-hi.png" Width="51px" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="ID" HeaderText="ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="USER_ID" HeaderText="USER_ID" Visible="False">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="IMAGE" HeaderText="IMAGE" Visible="False">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="DISCRIPTION" HeaderText="DESCRIPTION">
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="IMAGE">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="62px" 
                                    ImageUrl='<%# Eval("IMAGE") %>' Width="76px" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

