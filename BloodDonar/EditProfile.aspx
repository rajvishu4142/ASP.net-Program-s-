<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EditProfile.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style9
    {
        width: 369px;
        height: 26px;
    }
    .style10
    {
        height: 26px;
    }
    .style11
    {
        width: 369px;
    }
        .style12
        {
            width: 239px;
        }
        .style13
        {
            height: 26px;
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="margin-right: 69px">
    <tr>
        <td class="style11">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#6600CC" 
                Text="Edit Profile"></asp:Label>
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="style13">
            <asp:TextBox ID="TextBox1" runat="server" Width="207px"></asp:TextBox>
        </td>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>
        </td>
        <td class="style12">
            <asp:TextBox ID="TextBox2" runat="server" Width="203px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="style12">
            <asp:TextBox ID="TextBox3" runat="server" Width="203px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
        </td>
        <td class="style12">
            <asp:TextBox ID="TextBox4" runat="server" Width="208px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
        </td>
        <td class="style12">
            <asp:TextBox ID="TextBox5" runat="server" Width="209px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            <asp:Button ID="Button1" runat="server" Height="50px" Text="Update Profile" 
                Width="163px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

