<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateSchedule.aspx.cs" Inherits="saassecurity.CreateSchedule" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .firstRow {
            padding-bottom: 30px;
        }

        .lastRow {
            padding-top: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">

        <asp:Table runat="server" ID="tblSelection">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="lblErrorMsg" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center" CssClass="firstRow">
                    <asp:Label ID="Label2" runat="server" Text="Create Schedule" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                        <asp:Label runat="server" Text="Select Site:"/>
                </asp:TableCell><asp:TableCell>
                    <asp:DropDownList ID="drpSite" runat="server" DataSourceID="SitesDataSource" DataTextField="siteName" DataValueField="siteId" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                        <asp:Label runat="server" Text="From:"/>
                </asp:TableCell><asp:TableCell>
                    <input type="date" id="txtFromDate" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFromDate" ErrorMessage=" *From Date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                        <asp:Label runat="server" Text="To:"/>
                </asp:TableCell><asp:TableCell>
                    <input type="date" id="txtToDate" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtToDate" ErrorMessage=" *To Date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center" CssClass="lastRow">
                    <asp:Button ID="btnCreateSched" runat="server" OnClick="btnCreateSched_Click" Text="Create" CssClass="btn btn-lg btn-primary btn-blocks"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" CssClass="firstRow lastRow">
                    <asp:Label runat="server" ID="labelMessage" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                    <asp:GridView ID="gridSched" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="shiftDate" HeaderText="Shift Date" SortExpression="shiftDate" />
                            <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" />
                            <asp:BoundField DataField="startTime" HeaderText="Start Time" SortExpression="startTime" />
                            <asp:BoundField DataField="endTime" HeaderText="End Time" SortExpression="endTime" />

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
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>


    </div>
    <asp:SqlDataSource ID="SitesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [siteName], [siteId] FROM [sites]"></asp:SqlDataSource>

</asp:Content>

