<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="upload_img.aspx.cs" Inherits="upload_img" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 30%;
        }
        .style2
        {
            width: 30px;
        }
        .style3
        {
            width: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td rowspan="5">
                <asp:Image ID="Image1" runat="server" Height="174px" Width="192px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                TYPE</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>food</asp:ListItem>
                    <asp:ListItem>hotel</asp:ListItem>
                    <asp:ListItem>place</asp:ListItem>
                    <asp:ListItem>others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                IMAGE</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="UPLOAD" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                DESCRIPTION</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" Height="31px" onclick="Button2_Click" 
                    Text="SAVE" Width="99px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

