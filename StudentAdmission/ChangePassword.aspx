<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 457px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" 
        Text="Change Password"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="style1">
        <tr>
            <td class="style5">
    <asp:Label runat="server" Text="Current Password" ID="Label5"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
    <asp:Label runat="server" Text="New Password" ID="Label6"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
    <asp:Label runat="server" Text="Confirm Password" ID="Label7"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
    <asp:Button ID="Button1" runat="server" Text="Click Me" Width="171px" />
            </td>
        </tr>
</table>
    <br />
    <br />
</asp:Content>

