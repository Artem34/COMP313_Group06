<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="saassecurity.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="180px">
        <asp:Button ID="btnAddEmp" runat="server" OnClick="btnAddEmp_Click" Text="Add Employee" />
        <br />
        <br />
        <asp:Button ID="btnAddAvail" runat="server" OnClick="btnAddAvail_Click" Text="Add Employee Availability" />
        <br />
        <br />
        <asp:Button ID="btnAddSite" runat="server" OnClick="btnAddSite_Click" Text="Add Site" />
        <br />
        <br />
    </asp:Panel>
    <br />
</asp:Content>
