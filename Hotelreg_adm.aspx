<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Hotelreg_adm.aspx.cs" Inherits="Hotelreg_adm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 123%;
        }
        .style18
        {
            width: 31px;
            height: 25px;
        }
        .style19
        {
            width: 31px;
            height: 26px;
        }
        .style20
        {
            width: 31px;
            height: 30px;
        }
        .style21
        {
            width: 31px;
            height: 23px;
        }
        .style22
        {
            width: 31px;
            height: 28px;
        }
        .style23
        {
            width: 31px;
        }
        .style25
        {
            width: 264px;
            height: 25px;
        }
        .style26
        {
            width: 264px;
            height: 26px;
        }
        .style27
        {
        width: 264px;
        height: 30px;
    }
        .style28
        {
            width: 264px;
            height: 23px;
        }
        .style29
        {
            width: 264px;
            height: 28px;
        }
        .style30
        {
        width: 264px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td rowspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                LOCATION</td>
            <td class="style25">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="**Mandatory" ForeColor="Red" 
                    InitialValue="--select--"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                HOTEL_NAME</td>
            <td class="style26">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td class="style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                ADDRESS</td>
            <td class="style30">
                <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20">
                PHONE</td>
            <td class="style27">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td class="style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="**" ForeColor="Red" 
                    ValidationExpression="^\d{10}$" Visible="False"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                EMAIL</td>
            <td class="style27">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td class="style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="146px" Width="222px" />
            </td>
        </tr>
        <tr>
            <td class="style21">
                ROOM_TYPE</td>
            <td class="style28">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="A/C" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="NON A/C" />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="SINGLE" />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="DOUBLE" />
                <asp:CheckBox ID="CheckBox5" runat="server" Text="FAMILY" />
            </td>
            <td class="style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                ROOM_AVAIL</td>
            <td class="style29">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td class="style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                IMAGE</td>
            <td class="style30">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="UPLOAD" />
            </td>
            <td class="style30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="154px" Width="224px" />
            </td>
        </tr>
        <tr>
            <td class="style23">
                IMAGE</td>
            <td class="style30">
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="UPLOAD" />
            </td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style30">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" 
                    Text="SUBMIT" />
            </td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

