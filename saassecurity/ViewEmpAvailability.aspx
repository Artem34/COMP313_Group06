<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewEmpAvailability.aspx.cs" Inherits="saassecurity.ViewEmpAvailability" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ViewEmpAvailabilitySqlDataSource" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="weekday" HeaderText="Week Day" ReadOnly="True" SortExpression="weekday" />
            <asp:BoundField DataField="startTime" HeaderText="Start Time" SortExpression="startTime" />
            <asp:BoundField DataField="endTime" HeaderText="End Time" SortExpression="endTime" />
            <asp:BoundField DataField="empId" HeaderText="Employee ID" SortExpression="empId" />
            <asp:BoundField DataField="name" HeaderText="Employee Name" ReadOnly="True" SortExpression="name" />
            <asp:BoundField DataField="totalHours" HeaderText="Employee Total Hours" SortExpression="totalHours" />
            <asp:BoundField DataField="hoursRemaining" HeaderText="Available Hours" ReadOnly="True" SortExpression="hoursRemaining" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="ViewEmpAvailabilitySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="select a.empId,
 (case a.weekday 
	when 1 then 'Sunday'
	when 2 then 'Monday'
	when 3 then 'Tuesday'
	when 4 then 'Wednesday'
	when 5 then 'Thursday'
	when 6 then 'Friday'
	when 7 then 'Saturday' end) as weekday,
	 a.startTime, a.endTime, e.firstName + e.lastName as name, h.totalHours, h.totalHours - h.hoursDone as hoursRemaining from availability a JOIN employees e on a.empId = e.empId JOIN empHours h on h.empId = a.empId
order by a.weekday"></asp:SqlDataSource>
</asp:Content>
