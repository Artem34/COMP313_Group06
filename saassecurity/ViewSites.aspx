<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewSites.aspx.cs" Inherits="saassecurity.ViewSites" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="247px">
        <div class="auto-style4">
            Site Details<br />
            <br />
            <br />
        </div>
        <div class="auto-style4">
            <asp:GridView HorizontalAlign="Center" ID="gridSitesInfo" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="siteId" DataSourceID="SitesInfoDataSource" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="316px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="siteId" HeaderText="Site ID" InsertVisible="False" ReadOnly="True" SortExpression="siteId" />
                    <asp:BoundField DataField="siteName" HeaderText="Site Name" SortExpression="siteName" />
                    <asp:HyperLinkField DataNavigateUrlFields="siteId" DataNavigateUrlFormatString="~/SiteDetails.aspx?siteId={0}" Text="View Details" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SitesInfoDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [siteId], [siteName] FROM [sites] ORDER BY [siteId]"></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
