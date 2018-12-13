<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="saassecurity.home" %>

<%@ MasterType VirtualPath="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="Use the links in navigation bar to navigate through the site.. " Font-Overline="False" Font-Size="X-Large" Font-Underline="True" ForeColor="#0033CC"></asp:Label>
    </div>
</asp:Content>
