<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddSite.aspx.cs" Inherits="saassecurity.AddSite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 112px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        Add Site Information<br />
        <br />
        Site Name:&nbsp;
        <asp:TextBox ID="txtSiteName" runat="server"></asp:TextBox>
        <br />
        <br />
        Address:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br />
        <br />
        Contact Person:
        <asp:TextBox ID="txtContactPerson" runat="server"></asp:TextBox>
        <br />
        <br />
        Contact Number:
        <asp:TextBox ID="txtContactNum" runat="server"></asp:TextBox>
        <br />
        <br />
        Schedule:
        <br />
        &nbsp;
    
       
    
        <asp:Table runat="server">
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
                <asp:TableCell>
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
        

        <br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Site Details" />
        

        <br />
        <br />
        <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
        <br />
        

        <asp:ObjectDataSource ID="DaysWeekDataSource" runat="server" SelectMethod="getDaysWeek" TypeName="saassecurity.DaysWeek"></asp:ObjectDataSource>
       

        <br />
        <br />
       

        <asp:ObjectDataSource ID="TimeHoursDataSource" runat="server" SelectMethod="GetHours" TypeName="saassecurity.TimeHours"></asp:ObjectDataSource>
       

</asp:Content>
