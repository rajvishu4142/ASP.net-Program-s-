<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EditProfile.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 272px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Edit Profile"></asp:Label>
    <br />
    <br />
    <table class="style1">
        <tr>
            <td class="style5">
                <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label9" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label12" runat="server" Text="State"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update Profile" Width="161px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

