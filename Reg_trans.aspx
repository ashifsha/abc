<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Reg_trans.aspx.cs" Inherits="Reg_trans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 289px;
        }
        .style3
        {
            width: 289px;
            height: 25px;
        }
        .style4
        {
            height: 25px;
        }
        .style5
        {
            width: 289px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            width: 289px;
            height: 30px;
        }
        .style8
        {
            height: 30px;
        }
        .style9
        {
            height: 30px;
            width: 355px;
        }
        .style10
        {
            width: 355px;
        }
        .style11
        {
            height: 26px;
            width: 355px;
        }
        .style12
        {
            height: 25px;
            width: 355px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon-contact-16-hi.png" Width="51px" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                TRAVELS_NAME</td>
            <td class="style10">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                DISTRICT</td>
            <td class="style10">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                    <asp:ListItem>--SELECT--</asp:ListItem>
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
                    <asp:ListItem>KOZHIKODE</asp:ListItem>
                    <asp:ListItem>WAYANAD</asp:ListItem>
                    <asp:ListItem>KANNUR</asp:ListItem>
                    <asp:ListItem>KASARGOD</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList5" ErrorMessage="*mandatory" 
                    ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                LOCATION</td>
            <td class="style11">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                ADDRESS</td>
            <td class="style10">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                MOBILE</td>
            <td class="style10">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="**" ForeColor="Red" 
                    ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                EMAIL</td>
            <td class="style10">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="**" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                TRANS_TYPE</td>
            <td class="style12">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="CAR" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="TRAVELLER" />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="BUS" />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="FLIGHT" />
                <asp:CheckBox ID="CheckBox5" runat="server" Text="TRAIN" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

