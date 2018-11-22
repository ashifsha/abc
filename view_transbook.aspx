<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_transbook.aspx.cs" Inherits="view_transbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table class="nav-justified">
    <tr>
        <td>
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                onitemcommand="DataGrid1_ItemCommand">
                <Columns>
                    <asp:BoundColumn DataField="TRAVELS_NAME" HeaderText="TRAVELS_NAME">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="LOCATION" HeaderText="LOCATION" Visible="False">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CUST_NAME" HeaderText="CUST_NAME"></asp:BoundColumn>
                    <asp:BoundColumn DataField="TYPE" HeaderText="TYPE"></asp:BoundColumn>
                    <asp:BoundColumn DataField="FROM_" HeaderText="FROM_"></asp:BoundColumn>
                    <asp:BoundColumn DataField="TO_" HeaderText="TO_"></asp:BoundColumn>
                    <asp:BoundColumn DataField="MOBILE" HeaderText="MOBILE"></asp:BoundColumn>
                    <asp:BoundColumn DataField="EMAIL" HeaderText="EMAIL" Visible="False">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="TIME" HeaderText="TIME"></asp:BoundColumn>
                    <asp:BoundColumn DataField="DATE" HeaderText="DATE"></asp:BoundColumn>
                    <asp:ButtonColumn CommandName="APPROVE" Text="APPROVE"></asp:ButtonColumn>
                    <asp:ButtonColumn CommandName="REJECT" Text="REJECT"></asp:ButtonColumn>
                </Columns>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

