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
    <div align="center">      

        <asp:Table runat="server">
            <asp:TableHeaderRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label Text=" Add Site Information" runat="server" />
                </asp:TableCell>
            </asp:TableHeaderRow>

            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label Text="Site Name:" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSiteName" runat="server" CssClass="span6"></asp:TextBox>
                    
                </asp:TableCell>
               <asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSiteName" ErrorMessage=" *Site Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell>
            </asp:TableRow>
           <asp:TableRow>
                <asp:TableCell>
                    <asp:Label Text="Site Address:" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </asp:TableCell>
               <asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage=" *Site Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell>
                     <asp:Label Text="Contact Person:" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtContactPerson" runat="server"></asp:TextBox>
                </asp:TableCell>
                 <asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactPerson" ErrorMessage=" *Contact Person is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell>
                     <asp:Label Text="Contact Number:" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtContactNum" runat="server" TextMode="Number"></asp:TextBox>
                </asp:TableCell>
                 <asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactNum" ErrorMessage=" *Contact Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell>
            </asp:TableRow>
        
        
    
         <asp:TableRow>
             <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                 <asp:Label Text="Schedule" runat="server"></asp:Label>
             </asp:TableCell>
         </asp:TableRow>
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
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                    <br />
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Site Details" />
                </asp:TableCell>
            </asp:TableRow>
    </asp:Table>
   
   </div>
     <asp:ObjectDataSource ID="DaysWeekDataSource" runat="server" SelectMethod="getDaysWeek" TypeName="saassecurity.DaysWeek"></asp:ObjectDataSource>

    <asp:ObjectDataSource ID="TimeHoursDataSource" runat="server" SelectMethod="GetHours" TypeName="saassecurity.TimeHours"></asp:ObjectDataSource>
    

</asp:Content>
