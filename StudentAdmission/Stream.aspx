<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Stream.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" 
    Text="Stream Selection"></asp:Label>
<br />
<br />
<asp:Label ID="Label4" runat="server" Text="Select Your Course"></asp:Label>
&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem>Select your Course</asp:ListItem>
    <asp:ListItem>BCA</asp:ListItem>
    <asp:ListItem>BBA</asp:ListItem>
    <asp:ListItem>BCom</asp:ListItem>
    <asp:ListItem>BSc</asp:ListItem>
    <asp:ListItem>MCA</asp:ListItem>
    <asp:ListItem>MBA</asp:ListItem>
    <asp:ListItem>MCom</asp:ListItem>
    <asp:ListItem>MSc</asp:ListItem>
</asp:DropDownList>
    <br />
    Enter Your Marks&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="176px"></asp:TextBox>
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Save Stream" Width="179px" 
        style="margin-bottom: 0px" />
<br />
</asp:Content>

