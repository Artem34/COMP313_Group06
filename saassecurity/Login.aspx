<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="saassecurity.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style4 {
            margin-right: 0px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4" Height="308px" Width="783px">
    <br />
    <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
    <br />
    <br />
    User Name:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUsername" runat="server" Width="137px"></asp:TextBox>
    <br />
    <br />
    Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" Width="143px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
    <br />
    <br />
</asp:Panel>
</asp:Content>
