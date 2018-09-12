<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddSite.aspx.cs" Inherits="saassecurity.AddSite" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 112px;
        }
        .auto-style4 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <asp:Panel ID="Panel1" runat="server">
            <div class="auto-style4">
                Add Site Information<br /> <br />
                <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </asp:Panel>
        <br />
    <div align="center" >
        <div class="auto-style4">
        &nbsp;Site Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSiteName" runat="server"></asp:TextBox>
        <br />
            Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br />
        Contact Person:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtContactPerson" runat="server"></asp:TextBox>
        <br />
        Contact Number:&nbsp;&nbsp;
        <asp:TextBox ID="txtContactNum" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />
        Schedule:
        <br />
        &nbsp;
    
       
    
        </div>
    
       
    
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
        

        <div class="auto-style4">
        

        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Site Details" />
        

        <br />
        <br />
        <br />
        
        </div>
        
    </div>
        <asp:ObjectDataSource ID="DaysWeekDataSource" runat="server" SelectMethod="getDaysWeek" TypeName="saassecurity.DaysWeek"></asp:ObjectDataSource>
       

        <br />
        <br />
       

        <asp:ObjectDataSource ID="TimeHoursDataSource" runat="server" SelectMethod="GetHours" TypeName="saassecurity.TimeHours"></asp:ObjectDataSource>
       

</asp:Content>
