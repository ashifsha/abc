<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_feedback.aspx.cs" Inherits="view_feedback" %>

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
    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
        onitemcommand="DataGrid1_ItemCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
        <AlternatingItemStyle BackColor="White" />
        <Columns>
            <asp:BoundColumn DataField="ID" HeaderText="ID"></asp:BoundColumn>
            <asp:BoundColumn DataField="FEEDBACK" HeaderText="FEEDBACK"></asp:BoundColumn>
            <asp:BoundColumn DataField="SUGGESTION" HeaderText="SUGGESTION">
            </asp:BoundColumn>
            <asp:ButtonColumn Text="delete"></asp:ButtonColumn>
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

