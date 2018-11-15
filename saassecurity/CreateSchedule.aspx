<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateSchedule.aspx.cs" Inherits="saassecurity.CreateSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblErrorMsg" runat="server" />
    <asp:Panel ID="Panel1" runat="server">
        Create Schedule<asp:Panel ID="Panel2" runat="server">
            
            <asp:Table runat="server" ID="tblSelection">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Select Site:"/>
                    </asp:TableCell><asp:TableCell>
                        <asp:DropDownList ID="drpSite" runat="server" DataSourceID="SitesDataSource" DataTextField="siteName" DataValueField="siteId" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="From:"/>
                    </asp:TableCell><asp:TableCell>
                        <input type="date" id="txtFromDate" runat="server" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                     <asp:TableCell>
                        <asp:Label runat="server" Text="To:"/>
                    </asp:TableCell><asp:TableCell>
                        <input type="date" id="txtToDate" runat="server" />
                    </asp:TableCell></asp:TableRow></asp:Table><asp:Button ID="btnCreateSched" runat="server" OnClick="btnCreateSched_Click" Text="Create" />
            
            <asp:SqlDataSource ID="SitesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [siteName], [siteId] FROM [sites]"></asp:SqlDataSource>
        </asp:Panel>
    </asp:Panel>



<asp:GridView ID="gridSched" runat="server" AutoGenerateColumns="False" ><Columns>
        
        <asp:BoundField DataField="weekday" HeaderText="weekday" SortExpression="weekday" />
        <asp:BoundField DataField="startTime" HeaderText="startTime" SortExpression="startTime" />
        <asp:BoundField DataField="endTime" HeaderText="endTime" SortExpression="endTime" />

    </Columns>

</asp:GridView>
    </asp:Content>

