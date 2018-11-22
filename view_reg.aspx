<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_reg.aspx.cs" Inherits="view_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 206px;
        }
        .style3
        {
            width: 206px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
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
                                <asp:BoundColumn DataField="ADDRESS" HeaderText="ADDRESS"></asp:BoundColumn>
                                <asp:BoundColumn DataField="GENDER" HeaderText="GENDER"></asp:BoundColumn>
                                <asp:BoundColumn DataField="DOB" HeaderText="DOB"></asp:BoundColumn>
                                <asp:BoundColumn DataField="MOBILE" HeaderText="MOBILE" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="EMAIL" HeaderText="EMAIL" Visible="False">
                                </asp:BoundColumn>
                                <asp:ButtonColumn Text="view"></asp:ButtonColumn>
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
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        NAME</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        ADDRESS</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        GENDER</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>MALE</asp:ListItem>
                            <asp:ListItem>FEMALE</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        DOB</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        MOBILE</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        EMAIL</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
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
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="ACCEPT" onclick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="BLOCK" onclick="Button2_Click" />
                    </td>
                </tr>
            </table>
            </asp:View>
    </asp:MultiView>
</asp:Content>

