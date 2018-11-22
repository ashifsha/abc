<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="placeReg_adm.aspx.cs" Inherits="placeReg_adm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 253px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 327px">
                &nbsp;</td>
            <td rowspan="6">
                <asp:Image ID="Image1" runat="server" Height="162px" Width="210px" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 253px">
                NAME</td>
            <td class="modal-sm" style="width: 327px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 253px">
                LOCATION</td>
            <td class="modal-sm" style="width: 327px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 253px">
                DISTRICT</td>
            <td class="modal-sm" style="width: 327px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>TRIVANDRUM</asp:ListItem>
                    <asp:ListItem>KOLLAM</asp:ListItem>
                    <asp:ListItem>PATHANAMTHITTA</asp:ListItem>
                    <asp:ListItem>ALAPPUZHA</asp:ListItem>
                    <asp:ListItem>KOTTAYAM</asp:ListItem>
                    <asp:ListItem>IDUKKI</asp:ListItem>
                    <asp:ListItem>ERNAKULAM</asp:ListItem>
                    <asp:ListItem>TRISSUR</asp:ListItem>
                    <asp:ListItem>PALAKKAD</asp:ListItem>
                    <asp:ListItem>MALAPPURAM</asp:ListItem>
                    <asp:ListItem>CALICUT</asp:ListItem>
                    <asp:ListItem>WAYANAD</asp:ListItem>
                    <asp:ListItem>KANNUR</asp:ListItem>
                    <asp:ListItem>KASARGOD</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 253px">
                IMAGE</td>
            <td class="modal-sm" style="width: 327px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="232px" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="UPLOAD" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 253px">
                CULTURAL INFO</td>
            <td class="modal-sm" style="width: 327px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 253px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 327px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 253px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 327px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

