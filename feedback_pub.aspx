<%@ Page Title="" Language="C#" MasterPageFile="~/Public.master" AutoEventWireup="true" CodeFile="feedback_pub.aspx.cs" Inherits="feedback_pub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">

            <table class="style1">
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand" CellPadding="4" ForeColor="#333333" 
                            GridLines="None" onselectedindexchanged="DataGrid1_SelectedIndexChanged1" 
                            >
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="ID" HeaderText="ID" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="NAME" HeaderText="User Name"></asp:BoundColumn>
                                <asp:BoundColumn DataField="FEEDBACK" HeaderText="feedback">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="SUGGESTION" HeaderText="suggestion">
                                </asp:BoundColumn>
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

        </asp:View>
    </asp:MultiView>
    
</asp:Content>

