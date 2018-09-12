<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SiteShiftsUserControl.ascx.cs" Inherits="saassecurity.SiteShiftsUserControl" %>
<asp:Table runat="server" ID="siteShiftUC">
            <asp:TableRow>
                <asp:TableCell>
                     <asp:CheckBox ID="chkMonday" runat="server" Text="Monday" />
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:DropDownList ID="startTimeMonday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endTimeMonday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                     <asp:CheckBox ID="chkTuesday" runat="server" Text="Tuesday" />
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:DropDownList ID="startTimeTuesday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endTimeTuesday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                     <asp:CheckBox ID="chkWednesday" runat="server" Text="Wednesday" />
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:DropDownList ID="startTimeWednesday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endTimeWednesday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                     <asp:CheckBox ID="chkThursday" runat="server" Text="Thursday" />
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:DropDownList ID="startTimeThursday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endTimeThursday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                     <asp:CheckBox ID="chkFriday" runat="server" Text="Friday" />
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:DropDownList ID="startTimeFriday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endTimeFriday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                     <asp:CheckBox ID="chkSaturday" runat="server" Text="Saturday" />
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:DropDownList ID="startTimeSaturday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endTimeSaturday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell >
                     <asp:CheckBox ID="chkSunday" runat="server" Text="Sunday" />
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:DropDownList ID="startTimeSunday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endTimeSunday" runat="server" Width="100px" DataSourceID="TimeHoursDataSource" DataTextField="Text" DataValueField="Text"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        