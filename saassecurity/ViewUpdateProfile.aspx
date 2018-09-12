<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewUpdateProfile.aspx.cs" Inherits="saassecurity.ViewUpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" >

    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <div class="auto-style4">
                <asp:DetailsView ID="DetailsView1" runat="server"  AutoGenerateRows="False" CellPadding="4" DataKeyNames="empId" DataSourceID="EmpProfileDataSource" ForeColor="#333333" GridLines="None" Height="50px" Width="310px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="empId" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="empId" />
                        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                        <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="contactNum" HeaderText="Contact Number" SortExpression="contactNum" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
            </div>
        </asp:Panel>
    </div>
    <br />
    <br />
    <asp:SqlDataSource ID="EmpProfileDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" DeleteCommand="DELETE FROM [employees] WHERE [empId] = @empId" InsertCommand="INSERT INTO [employees] ([firstName], [lastName], [dob], [address], [email], [contactNum]) VALUES (@firstName, @lastName, @dob, @address, @email, @contactNum)" SelectCommand="SELECT [empId], [firstName], [lastName], [dob], [address], [email], [contactNum] FROM [employees] WHERE ([empId] = @empId)" UpdateCommand="UPDATE [employees] SET [firstName] = @firstName, [lastName] = @lastName, [dob] = @dob, [address] = @address, [email] = @email, [contactNum] = @contactNum WHERE [empId] = @empId">
        <DeleteParameters>
            <asp:Parameter Name="empId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contactNum" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="empId" SessionField="empId" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contactNum" Type="Int32" />
            <asp:Parameter Name="empId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
