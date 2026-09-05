<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EditProfile.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
    {
        }
    .style4
    {
        width: 273px;
        height: 29px;
    }
    .style5
    {
        height: 29px;
            width: 503px;
        }
        .style6
        {
            width: 503px;
        }
        .style7
        {
            width: 225px;
        }
        .style8
        {
            width: 205px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3" colspan="2">
            <asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="#3333FF" 
                Text="Edit Profile Page"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
        </td>
        <td class="style8">
            <asp:Label ID="Label7" runat="server" Text="Delete by Username"></asp:Label>
        </td>
        <td class="style7">
            <asp:TextBox ID="TextBox6" runat="server" Width="192px"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Delete Me" Width="134px" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label3" runat="server" Text="Mobile"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
        </td>
        <td class="style6">
            <asp:TextBox ID="TextBox5" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style6">
            <asp:Button ID="Button1" runat="server" Text="Update Profile" Width="134px" />
        </td>
    </tr>
</table>
</asp:Content>

