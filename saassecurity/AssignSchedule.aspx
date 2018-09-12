<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AssignSchedule.aspx.cs" Inherits="saassecurity.AssignSchedule" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
    <asp:Panel ID="Panel1" runat="server" Height="149px">
        <br />
        <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create Schedule" OnClick="Button1_Click" />
        <br />
        <br />
       <asp:Button ID="btnStartSchedAssign" runat="server" Text="Start auto schedule assignment job" OnClick="btnStartSchedAssign_Click" />
    </asp:Panel>
    </div>
</asp:Content>
