<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SearchPage.aspx.vb" Inherits="SearchPage" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
            width: 543px;
        }
        .style9
        {
            width: 543px;
            height: 120px;
        }
        .style10
        {
            height: 120px;
        }
        .style11
        {
            width: 543px;
            height: 29px;
        }
        .style12
        {
            height: 29px;
        }
        .style13
        {
            width: 543px;
            height: 38px;
        }
        .style14
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style13">
                                        <asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="#3333FF" 
                Text="Search Page"></asp:Label>
                                    </td>
        <td class="style14">
            </td>
    </tr>
    <tr>
        <td class="style11">
                                        <asp:Label ID="Label7" runat="server" Text="Blood Group"></asp:Label>
                                    </td>
        <td class="style12">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource1" DataTextField="bldgrp" DataValueField="bldgrp" 
                                            Width="191px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [bldgrp] FROM [emp]"></asp:SqlDataSource>
                                    </td>
    </tr>
    <tr>
        <td class="style11">
                                        <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                                    </td>
        <td class="style12">
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource2" DataTextField="city" DataValueField="city" 
                                            Width="191px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [city] FROM [emp]"></asp:SqlDataSource>
                                        </td>
    </tr>
    <tr>
        <td class="style13">
                                        <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
                                    </td>
        <td class="style14">
                                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource3" DataTextField="state" DataValueField="state" 
                                            Width="191px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [state] FROM [emp]"></asp:SqlDataSource>
                                        </td>
    </tr>
    <tr>
        <td class="style8">
                                        &nbsp;</td>
        <td>
                                        &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            </td>
        <td class="style10">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="unm" HeaderText="unm" SortExpression="unm" />
                    <asp:BoundField DataField="psw" HeaderText="psw" SortExpression="psw" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="mobile" HeaderText="mobile" 
                        SortExpression="mobile" />
                    <asp:BoundField DataField="address" HeaderText="address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="bldgrp" HeaderText="bldgrp" 
                        SortExpression="bldgrp" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [emp] WHERE (([bldgrp] = @bldgrp) AND ([city] = @city) AND ([state] = @state))">
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

