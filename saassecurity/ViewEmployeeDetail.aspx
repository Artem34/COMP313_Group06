<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewEmployeeDetail.aspx.cs" Inherits="saassecurity.ViewEmployeeDetail" %>
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
        Employee Details<br /> <br />
        <asp:Panel ID="Panel2" runat="server">
            <div class="auto-style5">
                <asp:DetailsView HorizontalAlign="Center" ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="empId" DataSourceID="EmpDetailDataSource" ForeColor="#333333" GridLines="None" Height="50px" Width="302px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="empId" HeaderText="Employee ID :" InsertVisible="False" ReadOnly="True" SortExpression="empId" />
                        <asp:BoundField DataField="firstName" HeaderText="First Name :" SortExpression="firstName" />
                        <asp:BoundField DataField="lastName" HeaderText="Last Name :" SortExpression="lastName" />
                        <asp:BoundField DataField="dob" HeaderText="Date of Birth :" SortExpression="dob" />
                        <asp:BoundField DataField="address" HeaderText="Address :" SortExpression="address" />
                        <asp:BoundField DataField="email" HeaderText="Email :" SortExpression="email" />
                        <asp:BoundField DataField="contactNum" HeaderText="Contact Number :" SortExpression="contactNum" />
                        <asp:BoundField DataField="userId" HeaderText="User Id :" SortExpression="userId" />
                        <asp:BoundField DataField="dot" HeaderText="Date of Termination :" SortExpression="dot" />
                        <asp:BoundField DataField="status" HeaderText="Status :" SortExpression="status" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
            </div>
            <asp:SqlDataSource ID="EmpDetailDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [empId], [firstName], [lastName], [dob], [address], [email], [contactNum], [userId], [dot], [status] FROM [employees] WHERE ([empId] = @empId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="empId" QueryStringField="empId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </div>
</asp:Panel>
</asp:Content>
