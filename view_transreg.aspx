<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_transreg.aspx.cs" Inherits="view_transreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 410px;
        }
        .style3
        {
            width: 410px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
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
                            onitemcommand="DataGrid1_ItemCommand">
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="ID" HeaderText="ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="NAME" HeaderText="NAME"></asp:BoundColumn>
                                <asp:BoundColumn DataField="LOCATION" HeaderText="LOCATION"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ADDRESS" HeaderText="ADDRESS"></asp:BoundColumn>
                                <asp:BoundColumn DataField="MOBILE" HeaderText="MOBILE"></asp:BoundColumn>
                                <asp:BoundColumn DataField="EMAIL" HeaderText="EMAIL"></asp:BoundColumn>
                                <asp:BoundColumn DataField="TYPE" HeaderText="TYPE" Visible="False">
                                </asp:BoundColumn>
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
        <asp:View ID="View3" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        TRAVELS_NAME</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        LOCATION</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        ADDRESS</td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        MOBILE</td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        EMAIL</td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        TRANS_TYPE</td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                            Text="Accept" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Block" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

