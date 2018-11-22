﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="hotel_reg.aspx.cs" Inherits="hotel_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 176px;
        }
        .style3
        {
            width: 292px;
        }
        .style4
        {
            width: 176px;
            height: 26px;
        }
        .style5
        {
            width: 292px;
            height: 26px;
        }
        .style10
        {
            width: 176px;
            height: 28px;
        }
        .style11
        {
            width: 292px;
            height: 28px;
        }
        .style12
        {
            width: 176px;
            height: 25px;
        }
        .style13
        {
            width: 292px;
            height: 25px;
        }
        .style14
        {
            width: 176px;
            height: 23px;
        }
        .style15
        {
            width: 292px;
            height: 23px;
        }
        .style16
        {
            width: 176px;
            height: 30px;
        }
        .style17
        {
            width: 292px;
            height: 30px;
        }
    .style18
    {
        width: 281px;
    }
    .style19
    {
        width: 281px;
        height: 25px;
    }
    .style20
    {
        width: 281px;
        height: 26px;
    }
    .style21
    {
        width: 281px;
        height: 30px;
    }
    .style22
    {
        width: 281px;
        height: 23px;
    }
    .style23
    {
        width: 281px;
        height: 28px;
    }
    .style24
    {
        width: 392px;
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
            <td class="style18">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon-contact-16-hi.png" Width="51px" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td rowspan="12" class="style24">
                <asp:Image ID="Image1" runat="server" Height="113px" Width="211px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                LOCATION</td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="178px">
                </asp:DropDownList>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="*mandatory" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                HOTEL_NAME</td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" Width="178px"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                ADDRESS</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                PHONE</td>
            <td class="style17">
                <asp:TextBox ID="TextBox6" runat="server" Width="178px"></asp:TextBox>
            </td>
            <td class="style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="**" ForeColor="Red" 
                    ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                EMAIL</td>
            <td class="style17">
                <asp:TextBox ID="TextBox7" runat="server" Width="176px"></asp:TextBox>
            </td>
            <td class="style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="**" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                ROOM_TYPE</td>
            <td class="style15">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="A/C" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="NON A/C" />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="SINGLE" />
                <asp:CheckBox ID="CheckBox5" runat="server" Text="DOUBLE" />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="FAMILY" />
            </td>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                ROOM_AVAIL</td>
            <td class="style11">
                <asp:TextBox ID="TextBox4" runat="server" Width="173px"></asp:TextBox>
            </td>
            <td class="style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style24" rowspan="3">
                <asp:Image ID="Image2" runat="server" Height="111px" Width="212px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                IMAGE</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="211px" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="UPLOAD" />
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                IMAGE</td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload2" runat="server" Width="209px" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="UPLOAD" />
            </td>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
            </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

