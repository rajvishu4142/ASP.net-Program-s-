<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MeritList.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Height="54px" Text="Click Me" 
        Width="273px" />
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" Width="717px">
    </asp:GridView>
    <br />
</asp:Content>

