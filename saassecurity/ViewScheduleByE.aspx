<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewScheduleByE.aspx.cs" Inherits="saassecurity.ViewScheduleByE" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center">
            <table>
                <tr>
                    <td>
                      
                            <div>
                                <div class="auto-style5">
                                    Schedule Information<br />
                                    <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>
                                   <br />
                                </div>
                                <asp:GridView HorizontalAlign="Center" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="scheduleId" DataSourceID="EmployeeScheduleDataSource" Width="934px" AllowPaging="True" AllowSorting="True" OnRowCommand="RowSelected" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="scheduleId" HeaderText="Schedule Id" InsertVisible="False" ReadOnly="True" SortExpression="scheduleId" Visible="False" />
                                        <asp:BoundField DataField="site" HeaderText="Site" SortExpression="site" />
                                        <asp:BoundField DataField="shiftDate" HeaderText="Shift Date" SortExpression="shiftDate" DataFormatString="{0:yyyy/MM/dd}"/>
                                        <asp:BoundField DataField="shiftDay" HeaderText="Day" SortExpression="shiftDay" />
                                        <asp:BoundField DataField="startTime" HeaderText="Start Time" SortExpression="startTime" />
                                        <asp:BoundField DataField="endTime" HeaderText="End Time" SortExpression="endTime" />
                                        <asp:BoundField DataField="checkInStatus" HeaderText="Check In Status" SortExpression="checkInStatus" />
                                        <asp:BoundField DataField="checkInTime" HeaderText="Check In Time" SortExpression="checkInTime" />
                                        <asp:ButtonField ButtonType="Button" CommandName="CheckInShift" Text="Check In" />
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
                                <asp:SqlDataSource ID="EmployeeScheduleDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="select s.scheduleId,(select t.siteName from sites t where t.siteId=s.siteId) as site, (select convert(date, s.shiftDate)) as shiftDate,
(case s.shiftDay when 1 then 'Sunday' when 2 then 'Monday' when 3 then 'Tuesday'  when 4 then 'Wednesday' when 5 then 'Thursday' when 6 then 'Friday' when 7 then 'Saturday' end) as shiftDay
,s.startTime,s.endTime,s.checkInStatus,s.checkInTime from schedule s where s.empId = @empId">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="empId" SessionField="empId" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                    </td>
                </tr>
               
               

            </table>
        </div>
</asp:Content>