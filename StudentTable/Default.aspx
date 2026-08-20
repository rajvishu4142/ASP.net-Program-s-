<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 290px;
        }
        .style2
        {
            height: 59px;
        }
        .style3
        {
            height: 271px;
        }
        .style4
        {
            width: 284px;
        }
        .style5
        {
            height: 59px;
            width: 284px;
        }
        .style6
        {
            height: 271px;
            width: 284px;
        }
        .style7
        {
            width: 543px;
        }
        .style8
        {
            height: 59px;
            width: 543px;
        }
        .style9
        {
            height: 271px;
            width: 543px;
        }
        .style10
        {
            height: 70px;
            width: 284px;
        }
        .style11
        {
            height: 70px;
            width: 543px;
        }
        .style12
        {
            height: 70px;
        }
        .style13
        {
            width: 284px;
            height: 49px;
        }
        .style14
        {
            width: 543px;
            height: 49px;
        }
        .style15
        {
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="STUDENT INFORMATION " 
        BackColor="#D9FA65"></asp:Label>
    <br />
    <br />
    <br />
    <div>
    
        <table class="style1">
            <tr>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Text="Roll_No"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCFF" 
                        ForeColor="Black" Width="484px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCFF" 
                        ForeColor="Black" Width="484px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCFF" 
                        ForeColor="Black" Width="484px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label5" runat="server" Text="Percentage"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCFF" 
                        ForeColor="Black" Width="484px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Insert" Width="233px" 
                        style="margin-right: 2px" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label6" runat="server" Text="Update Student" BackColor="#D9FA65"></asp:Label>
                </td>
                <td class="style8">
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label7" runat="server" Text="Student Name"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCFF" 
                        ForeColor="Black" Width="484px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label8" runat="server" Text="New Percentage"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox6" runat="server" BackColor="#CCCCFF" 
                        ForeColor="Black" Width="484px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Update" Width="220px" />
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label9" runat="server" Text="Delete Student" BackColor="#D9FA65"></asp:Label>
                </td>
                <td class="style11">
                </td>
                <td class="style12">
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label10" runat="server" Text="Roll_No"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCCCFF" 
                        ForeColor="Black" Width="484px"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:Button ID="Button3" runat="server" Text="Delete" Width="226px" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:GridView ID="GridView1" runat="server" Height="259px" Width="433px">
                    </asp:GridView>
                </td>
                <td class="style9">
                </td>
                <td class="style3">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
