<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="saassecurity.home" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="215px">
    <asp:Button ID="btnAddEmp" runat="server" OnClick="btnAddEmp_Click" Text="Add Employee" />
    <br />
    <br />
    <asp:Button ID="btnAddAvail" runat="server" OnClick="btnAddAvail_Click" Text="Add Employee Availability" />
    <br />
    <br />
    <asp:Button ID="btnAddSite" runat="server" OnClick="btnAddSite_Click" Text="Add Site" />
    <br />
    <br />
    <asp:Button ID="BtnViewSchedByE" runat="server" OnClick="BtnViewSchedByE_Click" Text="View Schedule by Employee" />
    <br />
    <br />
    <asp:Button ID="btnViewSchedByS" runat="server" OnClick="btnViewSchedByS_Click" Text="View Schedule by Supervisor" />
    <br />
</asp:Panel>
<br />
</asp:Content>
