<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="food.aspx.cs" Inherits="food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 174px;
        }
        .style3
        {
            width: 337px;
        }
    .style4
    {
        width: 174px;
        height: 29px;
    }
    .style5
    {
        width: 337px;
        height: 29px;
    }
    .style6
    {
        height: 29px;
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
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td rowspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                REST_NAME</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style3" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="145px" Width="208px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                LOCATION</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" Height="17px" 
                    Width="124px">
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage="*mandatory" 
                    ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                TYPE</td>
            <td class="style3">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="VEG" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="NON-VEG" />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="BAKERY" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                IMAGE</td>
            <td class="style5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                    Text="UPLOAD" />
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="**" 
                    ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

