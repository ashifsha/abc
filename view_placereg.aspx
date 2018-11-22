<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_placereg.aspx.cs" Inherits="view_placereg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 268px;
            height: 23px;
        }
        .style5
        {
            width: 316px;
            height: 23px;
        }
        .style7
        {
            width: 316px;
        }
        .style8
        {
            width: 268px;
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
                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                            onitemcommand="DataGrid1_ItemCommand" 
                            onselectedindexchanged="DataGrid1_SelectedIndexChanged">
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="ID" HeaderText="ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="NAME" HeaderText="NAME"></asp:BoundColumn>
                                <asp:BoundColumn DataField="LOCATION" HeaderText="LOCATION"></asp:BoundColumn>
                                <asp:BoundColumn DataField="IMAGE" HeaderText="IMAGE" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="CULTURALINFO" HeaderText="CULTURALINFO" 
                                    Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="DISTRICT" HeaderText="DISTRICT"></asp:BoundColumn>
                                <asp:ButtonColumn Text="VIEW"></asp:ButtonColumn>
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
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style7">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td rowspan="6">
                        <asp:Image ID="Image1" runat="server" Height="189px" Width="190px" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        NAME</td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        LOCATION</td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        DISTRICT</td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        CULTURAL INFO</td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Height="60px" 
                            TextMode="MultiLine" Width="295px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style7">
                        <asp:Button ID="Button2" runat="server" Text="ACCEPT" onclick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="BLOCK" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

