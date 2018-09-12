<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="saassecurity.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style4 {
            margin-right: 0px;
            text-align: center;
        }
        .auto-style5 {
            margin-left: 7px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style4" Height="308px" Width="783px">
        <span style="color: #0000FF; font-size: 22px; font-weight: normal; font-family: Arial, Helvetica, sans-serif">Welcome to Saas Security Services</span><br />
        <br />
        Login<br />
        <br />
        <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        User Name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUsername" runat="server" Width="137px"></asp:TextBox>
        &nbsp;<span style="color: #FF0000">*</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp; Password:&nbsp;&nbsp;<asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style5" Width="134px" TextMode="Password"></asp:TextBox>
        <span style="color: #FF0000">*</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
</asp:Panel>
</asp:Content>
