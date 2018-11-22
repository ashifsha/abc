<%@ Page Title="" Language="C#" MasterPageFile="~/hotel.master" AutoEventWireup="true" CodeFile="H_update_profile.aspx.cs" Inherits="H_update_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
html,
button,
input,
select,
textarea {
  color: #222;
}

button,select{text-transform:none}button,input,select,textarea{font-size:100%;margin:0;vertical-align:baseline;*vertical-align:middle}html,button,input,select,textarea{font-family:sans-serif}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
  select {
    background: #fff !important;
  }
  button,
select {
  text-transform: none;
}
button,
input,
optgroup,
select,
textarea {
  margin: 0;
  font: inherit;
  color: inherit;
}

*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

  * {
    background: transparent !important;
    color: #000 !important;
    /* Black prints faster: h5bp.com/s */
    box-shadow: none !important;
    text-shadow: none !important;
  }

  * {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    box-shadow: none !important;
  }
    .style2
    {
        width: 213px;
    }
    .style3
    {
        width: 312px;
    }
    .style4
    {
        width: 213px;
        height: 28px;
    }
    .style5
    {
        width: 312px;
        height: 28px;
    }
    .style6
    {
        height: 28px;
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
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style4">
                LOCATION</td>
        <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="146px">
                </asp:DropDownList>
                </td>
        <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        <td class="style6">
            </td>
    </tr>
    <tr>
        <td class="style2">
                HOTEL_NAME</td>
        <td class="style3">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
        <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                ADDRESS</td>
        <td class="style3">
                <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
        <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                PHONE</td>
        <td class="style3">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
        <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                EMAIL</td>
        <td class="style3">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
        <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                ROOM_TYPE</td>
        <td class="style3">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>A/C</asp:ListItem>
                    <asp:ListItem>NON A/C</asp:ListItem>
                    <asp:ListItem>SINGLE</asp:ListItem>
                    <asp:ListItem>DOUBLE</asp:ListItem>
                    <asp:ListItem Value="FAMILY"></asp:ListItem>
                </asp:CheckBoxList>
            </td>
        <td class="style3">
                &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                ROOM_AVAIL</td>
        <td class="style3">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
        <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="**Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                IMAGE</td>
        <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="UPLOAD" />
            <br />
        </td>
        <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
                <asp:Image ID="Image1" runat="server" Height="146px" Width="222px" />
            </td>
    </tr>
    <tr>
        <td class="style2">
                IMAGE</td>
        <td class="style3">
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="UPLOAD" />
            <br />
        </td>
        <td class="style3">
                &nbsp;</td>
        <td>
                <asp:Image ID="Image2" runat="server" Height="146px" Width="222px" />
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" 
                    Text="UPDATE" />
            </td>
        <td class="style3">
                &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

