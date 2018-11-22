<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="U_RATING.aspx.cs" Inherits="U_RATING" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 143px;
        }
        .style2
        {
            width: 280px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton6" runat="server" 
                    ImageUrl="~/icon-contact-16-hi.png" Width="51px" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Review</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="182px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Rating</td>
            <td class="style2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
                    ImageUrl="~/star-rating.png" oncommand="ImageButton1_Command" Width="42px" />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="34px" 
                    ImageUrl="~/star-rating.png" oncommand="ImageButton2_Command" Width="35px" />
                <asp:ImageButton ID="ImageButton3" runat="server" Height="35px" 
                    ImageUrl="~/star-rating.png" oncommand="ImageButton3_Command" Width="39px" />
                <asp:ImageButton ID="ImageButton4" runat="server" Height="37px" 
                    ImageUrl="~/star-rating.png" oncommand="ImageButton4_Command" Width="42px" />
                <asp:ImageButton ID="ImageButton5" runat="server" Height="34px" 
                    ImageUrl="~/star-rating.png" oncommand="ImageButton5_Command" Width="38px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Score is..&nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="157px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Ok" 
                    Width="87px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

