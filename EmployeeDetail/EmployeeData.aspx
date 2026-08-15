<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EmployeeData.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        height: 59px;
    }
    .style8
    {
    }
    .style10
    {
        height: 59px;
    }
    .style11
    {
        height: 30px;
        width: 197px;
    }
    .style12
    {
        height: 59px;
        width: 237px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style10" colspan="5">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Font-Size="Large" 
                Text="Employee CRUD Operations on this  Page"></asp:Label>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            <asp:Button ID="Button1" runat="server" Height="48px" Text="Add Employee" 
                Width="214px" />
        </td>
        <td class="style7" colspan="2">
            <asp:Button ID="Button3" runat="server" Height="47px" Text="Update By EmpID" 
                Width="197px" />
        </td>
        <td class="style7">
            <asp:Button ID="Button4" runat="server" Height="42px" Text="Delete By EmpID" 
                Width="190px" />
        </td>
        <td class="style7">
            <asp:Button ID="Button2" runat="server" Height="48px" Text="Show Employee" 
                Width="201px" />
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Emp_ID"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox1" runat="server" Width="285px"></asp:TextBox>
        </td>
        <td class="style8" colspan="2" rowspan="7">
            <asp:GridView ID="GridView1" runat="server" Height="206px" Width="558px">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <asp:Label ID="Label3" runat="server" Text="Emp_Name"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox2" runat="server" Width="290px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <asp:Label ID="Label4" runat="server" Text="Mobile"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox3" runat="server" Width="289px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox4" runat="server" Width="289px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <asp:Label ID="Label6" runat="server" Text="Date of Joining"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox5" runat="server" Width="289px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox6" runat="server" Width="289px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <asp:Label ID="Label8" runat="server" Text="Salary"></asp:Label>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox7" runat="server" Width="289px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>

