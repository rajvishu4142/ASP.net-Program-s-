<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SearchPage.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        height: 53px;
    }
    .style10
    {
        height: 53px;
        width: 328px;
    }
    .style11
    {
        width: 328px;
    }
    .style12
    {
        height: 198px;
        width: 328px;
    }
    .style13
    {
        height: 198px;
    }
        .style14
        {
            width: 328px;
            height: 29px;
        }
        .style15
        {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style10">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#6600CC" 
                Text="SearchPage"></asp:Label>
            &nbsp;</td>
        <td class="style8">
        </td>
    </tr>
    <tr>
        <td class="style11">
            <asp:Label ID="Label3" runat="server" Text="Blood Group"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="184px" 
                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="bldgrp" 
                DataValueField="bldgrp">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [bldgrp] FROM [donar]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style11">
            <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="183px" 
                AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="city" 
                DataValueField="city">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [city] FROM [donar]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style14">
            <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
        </td>
        <td class="style15">
            <asp:DropDownList ID="DropDownList3" runat="server" Width="180px" 
                AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="state" 
                DataValueField="state">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [state] FROM [donar]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style12">
        </td>
        <td class="style13">
            <asp:GridView ID="GridView1" runat="server" Height="185px" Width="388px" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="unm" HeaderText="unm" SortExpression="unm" />
                    <asp:BoundField DataField="psw" HeaderText="psw" SortExpression="psw" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="bldgrp" HeaderText="bldgrp" 
                        SortExpression="bldgrp" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="mobile" HeaderText="mobile" 
                        SortExpression="mobile" />
                    <asp:BoundField DataField="address" HeaderText="address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="lastdndate" HeaderText="lastdndate" 
                        SortExpression="lastdndate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [donar] WHERE (([bldgrp] = @bldgrp) AND ([city] = @city) AND ([state] = @state))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="bldgrp" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="city" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList3" Name="state" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

