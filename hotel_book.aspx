<%@ Page Title="" Language="C#" MasterPageFile="~/hotel.master" AutoEventWireup="true" CodeFile="hotel_book.aspx.cs" Inherits="hotel_book" %>

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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                onitemcommand="DataGrid1_ItemCommand" 
                onselectedindexchanged="DataGrid1_SelectedIndexChanged" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:BoundColumn DataField="ID" HeaderText="ID"></asp:BoundColumn>
                    <asp:BoundColumn DataField="NAME" HeaderText="USERNAME"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CHECK_IN" HeaderText="CHECK_IN"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CHECK_OUT" HeaderText="CHECK_OUT"></asp:BoundColumn>
                    <asp:BoundColumn DataField="TYPE" HeaderText="TYPE"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ADULT" HeaderText="ADULT"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CHILDREN" HeaderText="CHILDREN"></asp:BoundColumn>
                    <asp:BoundColumn DataField="PURPOSE" HeaderText="PURPOSE"></asp:BoundColumn>
                    <asp:ButtonColumn CommandName="Approve" Text="Approve"></asp:ButtonColumn>
                    <asp:ButtonColumn CommandName="Reject" Text="Reject"></asp:ButtonColumn>
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

