<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Supplier.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        height: 64px;
    }
    .style5
    {
            width: 566px;
        }
        .style7
        {
            width: 566px;
            height: 56px;
        }
        .style8
        {
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style4" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#3333FF" 
                    Text="Supplier Page"></asp:Label>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label4" runat="server" Text="Supplier_Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label5" runat="server" Text="Person_Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label6" runat="server" Text="Mobile"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="41px" Text="Submit" 
                Width="156px" />
        </td>
    </tr>
</table>
</asp:Content>

