<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Product.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        height: 40px;
    }
        .style5
        {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style4" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#3333FF" 
                    Text="Products Page"></asp:Label>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Product_Code"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="187px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Product_Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="187px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label5" runat="server" Text="Category"></asp:Label>
        </td>
        <td class="style5">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                Height="30px" Width="197px" DataSourceID="SqlDataSource1" 
                DataTextField="cname" DataValueField="cname">
            </asp:DropDownList>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [cname] FROM [category]"></asp:SqlDataSource>
            
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Unit"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                Height="30px" Width="197px" DataSourceID="SqlDataSource2" 
                DataTextField="uname" DataValueField="uname">
            </asp:DropDownList>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [uname] FROM [unit]"></asp:SqlDataSource>
            
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Supplier"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                Height="30px" Width="197px" DataSourceID="SqlDataSource3" 
                DataTextField="sname" DataValueField="sname">
            </asp:DropDownList>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [sname] FROM [suplier]"></asp:SqlDataSource>
            
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Purchase_Price"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="203px" Height="36px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label9" runat="server" Text="Selling_Price"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="TextBox7" runat="server" Width="205px" Height="33px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="44px" Text="Submit" 
                Width="170px" />
        </td>
    </tr>
</table>
</asp:Content>

