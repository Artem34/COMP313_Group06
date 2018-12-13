<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewEmployee.aspx.cs" Inherits="saassecurity.ViewEmployeeaspx" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <div class="auto-style4">
        Employees List<br />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="180px">
            <div class="auto-style5">
                <asp:GridView HorizontalAlign="Center" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="empId" DataSourceID="EmployeeListDataSource" ForeColor="#333333" GridLines="None"  Width="740px" OnSorting="GridView1_Sorting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="empId" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="empId" />
                        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="contactNum" HeaderText="Contact Number" SortExpression="contactNum" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        <asp:HyperLinkField DataNavigateUrlFields="empId" DataNavigateUrlFormatString="~/ViewEmployeeDetail.aspx?empId={0}" Text="View Details" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
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
        </asp:Panel>
    </div>
</asp:Panel>
<asp:SqlDataSource ID="EmployeeListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [firstName], [lastName], [status], [empId], [email], [contactNum] FROM [employees]" ></asp:SqlDataSource>
</asp:Content>
