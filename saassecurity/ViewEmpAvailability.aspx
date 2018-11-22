<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewEmpAvailability.aspx.cs" Inherits="saassecurity.ViewEmpAvailability" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div>

        Filter:
        
        Available on
        <asp:Label runat="server" Text="Day:" />
        <asp:DropDownList ID="drpWeekDay" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1">Sunday</asp:ListItem>
            <asp:ListItem Value="2">Monday</asp:ListItem>
            <asp:ListItem Value="3">Tuesday</asp:ListItem>
            <asp:ListItem Value="4">Wednesday</asp:ListItem>
            <asp:ListItem Value="5">Thursday</asp:ListItem>
            <asp:ListItem Value="6">Friday</asp:ListItem>
            <asp:ListItem Value="7">Saturday</asp:ListItem>
        </asp:DropDownList>   
        between
        <asp:DropDownList ID="drpStartTime" runat="server" DataSourceID="HoursDS" /> (Star Time)
       
        and

        <asp:DropDownList ID="drpEndTime" runat="server" DataSourceID="HoursDS" /> (End Time)
        
    
        <asp:Button ID="btnSearch" runat="server" Text="Apply" OnClick="filterData" />
        
       
    
    </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" OnDataBound="OnDataBound" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="weekday" HeaderText="Week Day" ReadOnly="True" SortExpression="weekday" Visible="False" />
            <asp:BoundField DataField="day" HeaderText="Day" ReadOnly="True" SortExpression="day" />
            <asp:BoundField DataField="startTime" HeaderText="Start Time" SortExpression="startTime" />
            <asp:BoundField DataField="endTime" HeaderText="End Time" SortExpression="endTime" />
            <asp:BoundField DataField="empId" HeaderText="Employee ID" SortExpression="empId" />
            <asp:BoundField DataField="name" HeaderText="Employee Name" ReadOnly="True" SortExpression="name" />
            <asp:BoundField DataField="hours" HeaderText="Employee Total Hours" SortExpression="hours" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="select a.empId, (case a.weekday 
           when 1 then 'Sunday' when 2 then 'Monday'	when 3 then 'Tuesday' 
            when 4 then 'Wednesday' when 5 then 'Thursday'	when 6 then 'Friday'
            when 7 then 'Saturday' end) as weekday, a.startTime, a.endTime, 
            e.firstName + e.lastName as name, e.hours,
            from availability a JOIN employees e on a.empId = e.empId JOIN empHours h on h.empId = a.empId where a.weekday = @weekDay">
        <SelectParameters>
            <asp:ControlParameter ControlID="drpWeekDay" Name="weekDay" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

     <asp:ObjectDataSource ID="HoursDS" runat="server" SelectMethod="GetHours" TypeName="saassecurity.TimeHours"></asp:ObjectDataSource>
                   
</asp:Content>
