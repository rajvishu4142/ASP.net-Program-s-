<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewTicket.aspx.vb" Inherits="ViewTicket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 226px;
        }
        .style3
        {
            height: 39px;
        }
        .style4
        {
            height: 39px;
            width: 222px;
        }
        .style5
        {
            height: 226px;
            width: 222px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="VIEW TICKETS PAGE"></asp:Label>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Text="View Tickets"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Show Tickets" Width="174px" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                </td>
                <td class="style2">
                    <asp:GridView ID="GridView1" runat="server" Height="203px" Width="446px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
