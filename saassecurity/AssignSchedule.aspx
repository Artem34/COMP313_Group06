<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AssignSchedule.aspx.cs" Inherits="saassecurity.AssignSchedule" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        table td {
        padding-right:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSite" runat="server" Text="Select Site:" />
                </asp:TableCell>
                 <asp:TableCell>
                     <asp:DropDownList ID="drpSelectSite" runat="server" DataSourceID="SitesDataSource" DataTextField="siteName" DataValueField="siteId" AppendDataBoundItems="true">
                        <asp:ListItem Value="0">Select All</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                 <asp:TableCell>
                   <asp:Button ID="btnStartSchedAssign" runat="server" Text="Start auto schedule assignment job" OnClick="btnStartSchedAssign_Click" CssClass="btn btn-lg btn-primary btn-blocks"/>
               </asp:TableCell>
            </asp:TableRow>
           
        </asp:Table>
     </div> 
      
        <asp:SqlDataSource ID="SitesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [siteName], [siteId] FROM [sites]"></asp:SqlDataSource>
      
</asp:Content>
