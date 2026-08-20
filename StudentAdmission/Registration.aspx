<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            width: 100%;
            margin-bottom: 15px;
        }
        .style2
        {
            width: 286px;
        }
        .style3
        {
            width: 286px;
            height: 40px;
        }
        .style4
        {
            height: 40px;
        }
        .style5
        {
            width: 286px;
            height: 29px;
        }
        .style6
        {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="REGISTRATION PAGE"></asp:Label>
            <br />
            <table class="style1">
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label8" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label11" runat="server" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Reset" Width="125px" 
                            style="height: 29px" />
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Submit Here" Width="125px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>
