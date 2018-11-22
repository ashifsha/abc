<%@ Page Title="" Language="C#" MasterPageFile="~/Public.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
        .style6
        {
            height: 26px;
        }
        .style8
        {
            height: 30px;
        }
    .style11
    {
        height: 23px;
        width: 270px;
    }
    .style13
    {
        width: 270px;
    }
    .style14
    {
        height: 26px;
        width: 270px;
    }
    .style15
    {
        height: 30px;
        width: 270px;
    }
        .style17
        {
            width: 358px;
            height: 26px;
        }
        .style18
        {
            width: 358px;
            height: 23px;
        }
        .style19
        {
            width: 358px;
            height: 30px;
        }
        .style20
        {
            width: 358px
        }
        .style21
        {
            width: 915px;
        }
        .style22
        {
            height: 26px;
            width: 915px;
        }
        .style23
        {
            height: 23px;
            width: 915px;
        }
        .style24
        {
            height: 30px;
            width: 915px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" 
    onactiveviewchanged="MultiView1_ActiveViewChanged">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        ID</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="229px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        FIRST NAME</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                            Width="226px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style17">
                        LAST NAME</td>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style14">
                        <asp:TextBox ID="TextBox3" runat="server" Width="227px"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="*Enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        ADDRESS</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Width="229px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        GENDER</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem>MALE</asp:ListItem>
                            <asp:ListItem>FEMALE</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="RadioButtonList1" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        DOB</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Jan</asp:ListItem>
                            <asp:ListItem>Feb</asp:ListItem>
                            <asp:ListItem>March</asp:ListItem>
                            <asp:ListItem>April</asp:ListItem>
                            <asp:ListItem>May</asp:ListItem>
                            <asp:ListItem>June</asp:ListItem>
                            <asp:ListItem>July</asp:ListItem>
                            <asp:ListItem>Aug</asp:ListItem>
                            <asp:ListItem>Sep</asp:ListItem>
                            <asp:ListItem>Oct</asp:ListItem>
                            <asp:ListItem>Nov</asp:ListItem>
                            <asp:ListItem>Dec</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="DropDownList2" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="DropDownList3" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style18">
                        MOBILE</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="**" ForeColor="Red" 
                            ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        EMAIL</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style13">
                        <asp:TextBox ID="TextBox5" runat="server" Width="231px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="**" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        PASSWORD</td>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style15">
                        <asp:TextBox ID="TextBox6" runat="server" Width="231px"></asp:TextBox>
                        &nbsp;
                    </td>
                    <td class="style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="*Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="**" ForeColor="Red" 
                            ValidationExpression="^.{4,8}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style17">
                        CONFIRM PASSWORD</td>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style14">
                        <asp:TextBox ID="TextBox7" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    <td class="style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="*Re_enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                            ErrorMessage="Password Missmatch" ForeColor="Red"></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="**" ForeColor="Red" 
                            ValidationExpression="^.{4,8}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                    </td>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style15">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="RESET" />
                    </td>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style3">
                        OTP</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="VERIFY" />

                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

