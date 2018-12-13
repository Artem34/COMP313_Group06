<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewSchedulebyS.aspx.cs" Inherits="saassecurity.ViewSchedulebyS" %>

<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center">
        
        <asp:Label Text="Schedule Information" runat="server"/>
        <br />
        <br />
        <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ScheduleDataSource" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="site" HeaderText="Site Name" ReadOnly="True" SortExpression="site" />
                <asp:BoundField DataField="shiftDate" HeaderText="Shift Date" SortExpression="shiftDate" />
                <asp:BoundField DataField="day" HeaderText="Week Day" SortExpression="day" />
                <asp:BoundField DataField="startTime" HeaderText="Start Time" SortExpression="startTime" />
                <asp:BoundField DataField="endTime" HeaderText="End Time" SortExpression="endTime" />
                <asp:BoundField DataField="name" HeaderText="Guard Name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="checkInStatus" HeaderText="Check In Status" SortExpression="checkInStatus" />
                <asp:BoundField DataField="checkInTime" HeaderText="Check In Time" SortExpression="checkInTime" />
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
    </div>
    </div>
   
    <asp:SqlDataSource ID="ScheduleDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="select (select t.siteName from sites t where t.siteId=s.siteId) as site,(SELECT CONVERT(date, s.shiftDate)) as shiftDate,
(case s.shiftDay when 1 then 'Sunday' when 2 then 'Monday' when 3 then 'Tuesday'  when 4 then 'Wednesday' when 5 then 'Thursday' when 6 then 'Friday' when 7 then 'Saturday' end) as day,s.startTime,s.endTime,(select firstName + ' ' + lastName 
 from employees e where e.empId=s.empId) as name,s.checkInStatus,s.checkInTime  from schedule s order by s.shiftDate asc"></asp:SqlDataSource>
 
</asp:Content>
