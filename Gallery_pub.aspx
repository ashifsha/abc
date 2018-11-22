<%@ Page Title="" Language="C#" MasterPageFile="~/Public.master" AutoEventWireup="true" CodeFile="Gallery_pub.aspx.cs" Inherits="Gallery_pub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2">
                        TYPE</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>Restaurant</asp:ListItem>
                            <asp:ListItem>Hotel</asp:ListItem>
                            <asp:ListItem>Place</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="**" ForeColor="Red" 
                            InitialValue="--select--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
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
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onselectedindexchanged="DataGrid1_SelectedIndexChanged" Width="336px" 
                            CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingItemStyle BackColor="White" />
                            <Columns>
                                <asp:BoundColumn DataField="ID" HeaderText="ID" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="TYPE" HeaderText="TYPE" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="REST_NAME" HeaderText="NAME"></asp:BoundColumn>
                                <asp:BoundColumn DataField="LOCATION" HeaderText="LOCATION" Visible="False">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="IMAGE" HeaderText="IMAGE" Visible="False"></asp:BoundColumn>
                                <asp:TemplateColumn></asp:TemplateColumn>
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
            <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="DataGrid2_SelectedIndexChanged" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:BoundColumn DataField="ID" HeaderText="ID" Visible="False">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="LOCATION" HeaderText="LOCATION" Visible="False">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="HOTEL_NAME" HeaderText="HOTEL_NAME">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="IMAGE1" HeaderText="IMAGE1" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="IMAGE2" HeaderText="IMAGE2" Visible="False"></asp:BoundColumn>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="74px" 
                                ImageUrl='<%# Eval("IMAGE1") %>' Width="75px" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" Height="78px" 
                                ImageUrl='<%# Eval("IMAGE2") %>' Width="86px" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataGrid>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:BoundColumn DataField="NAME" HeaderText="NAME"></asp:BoundColumn>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <asp:Image ID="Image4" runat="server" Height="68px" 
                                ImageUrl='<%# Eval("IMAGE") %>' Width="80px" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataGrid>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <asp:DataGrid ID="DataGrid4" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <asp:Image ID="Image5" runat="server" Height="62px" 
                                ImageUrl='<%# Eval("IMAGE") %>' Width="94px" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataGrid>
        </asp:View>
    </asp:MultiView>
</asp:Content>

