<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="transportation.aspx.cs" Inherits="transportation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 340px;
        }
        .style3
        {
            width: 340px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon-contact-16-hi.png" Width="51px" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                LOCATION</td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                    AppendDataBoundItems="True" AutoPostBack="True" Height="17px" 
                    Width="122px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage="*Mandatory" 
                    ForeColor="Red" InitialValue="--select--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                TRAVELS_NAME</td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="125px" 
                   >
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                TYPE</td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList4" runat="server" Height="20px" Width="126px">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>CAR</asp:ListItem>
                    <asp:ListItem>BUS</asp:ListItem>
                    <asp:ListItem>TRAVELLER</asp:ListItem>
                    <asp:ListItem>TRAIN</asp:ListItem>
                    <asp:ListItem>FLIGHT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                FROM</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                TO</td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="124px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="*Mandatory" 
                    ForeColor="Red" InitialValue="--select--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                CUST_NAME</td>
            <td class="style2">
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox14" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                MOBILE</td>
            <td class="style2">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="**" ForeColor="Red" 
                    ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                EMAIL</td>
            <td class="style2">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="**" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                TIME</td>
            <td style="margin-left: 40px" class="style2">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 40px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*00:00pm/am*" ForeColor="Red" 
                    
                    ValidationExpression="^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][aApP][mM]){1}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                DATE</td>
            <td style="margin-left: 40px" class="style2">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 40px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="*00/00/0000*" ForeColor="Red" 
                    
                    ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

