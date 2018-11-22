<%@ Page Title="" Language="C#" MasterPageFile="~/hotel.master" AutoEventWireup="true" CodeFile="H_home.aspx.cs" Inherits="H_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/hotel_book.aspx">Booking_Deatails</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
        PostBackUrl="~/H_update_profile.aspx">__Profile_Update</asp:LinkButton>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

