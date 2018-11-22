<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AssignSchedule.aspx.cs" Inherits="saassecurity.AssignSchedule" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
    <asp:Panel ID="Panel1" runat="server" Height="149px">
        <asp:Label ID="lblSite" runat="server" Text="Select Site" />
       
        &nbsp;<asp:DropDownList ID="drpSelectSite" runat="server" DataSourceID="SitesDataSource" DataTextField="siteName" DataValueField="siteId" AppendDataBoundItems="true">
            <asp:ListItem Value="0">Select All</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SitesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [siteName], [siteId] FROM [sites]"></asp:SqlDataSource>
        <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
        
        <br />
       <asp:Button ID="btnStartSchedAssign" runat="server" Text="Start auto schedule assignment job" OnClick="btnStartSchedAssign_Click" />
    </asp:Panel>
    </div>
</asp:Content>
