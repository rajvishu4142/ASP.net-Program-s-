<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        height: 51px;
    }
    .style9
    {
        height: 51px;
        width: 359px;
    }
    .style10
    {
        width: 359px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style9">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#6600CC" 
                Text="Change Password"></asp:Label>
            &nbsp;</td>
        <td class="style8">
        </td>
    </tr>
    <tr>
        <td class="style10">
            <asp:Label ID="Label4" runat="server" Text="Old Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="215px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            <asp:Label ID="Label5" runat="server" Text="New Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="213px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="211px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="49px" Text="Submit Here" 
                Width="151px" />
        </td>
    </tr>
</table>
</asp:Content>

