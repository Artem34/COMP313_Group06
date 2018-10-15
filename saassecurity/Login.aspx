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
        .form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
    </style>
    
</asp:Content>
<asp:Content ID="Content2" CssClass="text-center" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:Panel ID="Panel1" runat="server" CssClass="text-center" >

        <span style="color: #0000FF; font-size: 22px; font-weight: normal; font-family: Arial, Helvetica, sans-serif">Welcome to Saas Security Services</span><br />
        <br />
        <h1 class="h3 mb-3 font-weight-normal">Login</h1>
      
        <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>
      
        <label >User Name:
        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Width="137px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator></label>
        <br />
        <label>Password:
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"  TextMode="Password" Width="137px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator></label>
        <br />

        <asp:Button CssClass="btn btn-lg btn-primary btn-blocks" ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
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
