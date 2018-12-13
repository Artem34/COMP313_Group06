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
             <div align="center" style="margin-top:20px">
        <asp:Table runat="server" >
            <asp:TableRow>
                <asp:TableCell ColumnSpan="5" HorizontalAlign="Center" CssClass="firstRow">
                     <asp:Label ID="Label1" runat="server" Text="Availability for Current Schedule:" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="False" style=""></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                         <asp:Label runat="server" Text="Start Date: " />
                        <asp:label id="txtStartDate" runat="server" />
                     </asp:TableCell>
                     <asp:TableCell ColumnSpan="2">
                         <asp:Label runat="server" Text="End Date: " />
                        <asp:label  id="txtEndDate" runat="server" />
                     </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:CheckBox ID="chkMon" runat="server" Text="Monday" />
                </asp:TableCell>
                <asp:TableCell>
                     <asp:Label ID="Label4" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>                        
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="startMon" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endMon" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:CheckBox ID="chkTue" runat="server" Text="Tuesday" /></asp:TableCell>
                <asp:TableCell> <asp:Label ID="Label8" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell>
                     <asp:DropDownList ID="startTue" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell><asp:Label ID="Label9" runat="server" Text="End Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endTue" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:CheckBox ID="chkWed" runat="server" Text="Wednesday" /></asp:TableCell>
                <asp:TableCell><asp:Label ID="Label12" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell>
                     <asp:DropDownList ID="startWed" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell><asp:Label ID="Label13" runat="server" Text="End Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:DropDownList ID="endWed" runat="server" CssClass="auto-style8" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell><asp:CheckBox ID="chkThu" runat="server" Text="Thursday" /></asp:TableCell>
                <asp:TableCell> <asp:Label ID="Label16" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="startThu" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell><asp:Label ID="Label17" runat="server" Text="End Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell> <asp:DropDownList ID="endThu" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                 <asp:TableCell><asp:CheckBox ID="chkFri" runat="server" Text="Friday" /></asp:TableCell>
                <asp:TableCell> <asp:Label ID="Label20" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="startFri" runat="server" AutoPostBack="True" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell><asp:Label ID="Label21" runat="server" Text="End Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="endFri" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell><asp:CheckBox ID="chkSat" runat="server" Text="Saturday" /></asp:TableCell>
                <asp:TableCell><asp:Label ID="Label24" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="startSat" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell><asp:Label ID="Label25" runat="server" Text="End Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell> <asp:DropDownList ID="endSat" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell> <asp:CheckBox ID="chkSun" runat="server" Text="Sunday" /></asp:TableCell>
                <asp:TableCell><asp:Label ID="Label28" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="startSun" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell><asp:Label ID="Label29" runat="server" Text="End Time:" Font-Bold="True"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:DropDownList ID="endSun" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></asp:TableCell>
            </asp:TableRow> 
           
        </asp:Table>
   
      
       <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
            <br />
            <br />
      </div> 
     <asp:ObjectDataSource ID="HoursDS" runat="server" SelectMethod="GetHours" TypeName="saassecurity.TimeHours"></asp:ObjectDataSource>
            <asp:SqlDataSource ID="EmpDetailDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ScheduleDb %>" SelectCommand="SELECT [empId], [firstName], [lastName], [dob], [address], [email], [contactNum], [userId], [dot], [status] FROM [employees] WHERE ([empId] = @empId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="empId" QueryStringField="empId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </div>
</asp:Panel>
</asp:Content>
