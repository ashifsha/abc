<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="place_reg.aspx.cs" Inherits="place_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 291px;
        }
        .style3
        {
            width: 400px;
        }
        .style4
        {
            width: 291px;
            height: 23px;
        }
        .style5
        {
            width: 400px;
            height: 23px;
        }
        .style7
        {
            width: 291px;
            height: 15px;
        }
        .style8
        {
            width: 400px;
            height: 15px;
        }
        .style9
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    s<table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon-contact-16-hi.png" Width="51px" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style9" rowspan="8">
                `<asp:Image ID="Image1" runat="server" 
                    Height="152px" Width="166px" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                NAME</td>
            <td class="style5">
                <asp:TextBox ID="TextBox9" runat="server" Width="134px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                LOCATION</td>
            <td class="style3">
                <asp:TextBox ID="TextBox10" runat="server" Width="134px"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                DISTRICT</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>-SELECT-</asp:ListItem>
                    <asp:ListItem>TRIVANDRUM</asp:ListItem>
                    <asp:ListItem>KOLLAM</asp:ListItem>
                    <asp:ListItem>PATHANAMTHITTA</asp:ListItem>
                    <asp:ListItem>ALAPPUZHA</asp:ListItem>
                    <asp:ListItem>KOTTYAM</asp:ListItem>
                    <asp:ListItem>IDUKKI</asp:ListItem>
                    <asp:ListItem>ERNAKULAM</asp:ListItem>
                    <asp:ListItem>TRISSUR</asp:ListItem>
                    <asp:ListItem>PALAKKAD</asp:ListItem>
                    <asp:ListItem>MALAPPURAM</asp:ListItem>
                    <asp:ListItem>CALICUT</asp:ListItem>
                    <asp:ListItem>WAYANAD</asp:ListItem>
                    <asp:ListItem>KANNUR</asp:ListItem>
                    <asp:ListItem>KASARAGOD</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="*mandatory" 
                    ForeColor="Red" InitialValue="-SELECT-"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                IMAGE</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="UPLOAD" onclick="Button1_Click" 
                    CausesValidation="False" />
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                CULTURAL INFO</td>
            <td class="style3">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" Text="SUBMIT" onclick="Button2_Click" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

