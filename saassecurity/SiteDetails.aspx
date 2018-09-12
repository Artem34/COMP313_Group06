<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SiteDetails.aspx.cs" Inherits="saassecurity.SiteDetails" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="421px">
        <div class="auto-style4">
            Site Details<br />
            <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
            <br />
        </div>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="98px">
            <asp:Table ID="Table1" runat="server" Height="31px" Width="46px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Site Name:</asp:TableCell>
                     <asp:TableCell runat="server"><asp:TextBox runat="server" ID="txtSiteName"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Site Address:</asp:TableCell>
                    <asp:TableCell runat="server"><asp:TextBox runat="server" ID="txtSiteAddress" ></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Contact Person:</asp:TableCell>
                    <asp:TableCell runat="server"><asp:TextBox  runat="server" ID="txtContact" ></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Contact Number:</asp:TableCell>
                    <asp:TableCell runat="server"><asp:TextBox runat="server" TextMode="Number" ID="txtContactNum" ></asp:TextBox></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
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
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:ObjectDataSource ID="TimeHoursDataSource" runat="server" SelectMethod="GetHours" TypeName="saassecurity.TimeHours"></asp:ObjectDataSource>
        <asp:SqlDataSource ID="SiteDetailsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [siteId], [siteName], [contactPerson], [contactNum], [siteAddress] FROM [sites] WHERE ([siteId] = @siteId)" DeleteCommand="DELETE FROM [sites] WHERE [siteId] = @siteId" InsertCommand="INSERT INTO [sites] ([siteName], [contactPerson], [contactNum], [siteAddress]) VALUES (@siteName, @contactPerson, @contactNum, @siteAddress)" UpdateCommand="UPDATE [sites] SET [siteName] = @siteName, [contactPerson] = @contactPerson, [contactNum] = @contactNum, [siteAddress] = @siteAddress WHERE [siteId] = @siteId">
            <DeleteParameters>
                <asp:Parameter Name="siteId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="siteName" Type="String" />
                <asp:Parameter Name="contactPerson" Type="String" />
                <asp:Parameter Name="contactNum" Type="Int32" />
                <asp:Parameter Name="siteAddress" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="siteId" QueryStringField="siteId" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="siteName" Type="String" />
                <asp:Parameter Name="contactPerson" Type="String" />
                <asp:Parameter Name="contactNum" Type="Int32" />
                <asp:Parameter Name="siteAddress" Type="String" />
                <asp:Parameter Name="siteId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
