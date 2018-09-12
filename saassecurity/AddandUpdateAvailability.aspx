<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="AddandUpdateAvailability.aspx.cs" Inherits="saassecurity.AddandUpdateAvailability" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 112px;
        }
        .auto-style5 {
            width: 176px;
        }
        .auto-style6 {
            width: 113px;
            height: 44px;
        }
        .auto-style8 {
            margin-bottom: 4px;
        }
        .auto-style9 {
            width: 163px;
        }
        .auto-style10 {
            width: 163px;
            height: 44px;
        }
        .auto-style11 {
            width: 113px;
            height: 30px;
        text-align: left;
    }
        .auto-style12 {
            width: 163px;
            height: 30px;
        }
        .auto-style13 {
            width: 176px;
            height: 30px;
        }
        .auto-style14 {
            text-align: center;
        }
    .auto-style15 {
        width: 113px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html>

<body>
    
        <div class="auto-style14">
           
            <div class="auto-style14">
           
           <asp:Label ID="Label1" runat="server" Text="Availability for Current Schedule:" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="False" style=""></asp:Label>

                <br />

            <br />

            </div>
            <div></div>
            <table  align="center">
                <tr>
                    <td class="auto-style11">
                        <asp:CheckBox ID="chkMon" runat="server" Text="Monday" />
                    </td>
                    
                    <td class="auto-style12">
                        <asp:Label ID="Label4" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="startMon" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Height="16px" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList>
                       </td><td class="auto-style13">&nbsp;<asp:Label ID="Label5" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="endMon" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:CheckBox ID="chkTue" runat="server" Text="Tuesday" />
                    </td>
                    
                    <td class="auto-style9">
                        <asp:Label ID="Label8" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="startTue" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td class="auto-style5">&nbsp;<asp:Label ID="Label9" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="endTue" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:CheckBox ID="chkWed" runat="server" Text="Wednesday" />
                    </td>
                   
                    <td class="auto-style9">
                        <asp:Label ID="Label12" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="startWed" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Height="16px" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td class="auto-style5"><asp:Label ID="Label13" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="endWed" runat="server" CssClass="auto-style8" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:CheckBox ID="chkThu" runat="server" Text="Thursday" />
                    </td>
                    
                    <td class="auto-style9">
                        <asp:Label ID="Label16" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="startThu" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Height="16px" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td class="auto-style5"><asp:Label ID="Label17" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="endThu" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:CheckBox ID="chkFri" runat="server" Text="Friday" />
                    </td>
                    
                    <td class="auto-style9">
                        <asp:Label ID="Label20" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="startFri" runat="server" AutoPostBack="True" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Height="16px" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td class="auto-style5"><asp:Label ID="Label21" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="endFri" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:CheckBox ID="chkSat" runat="server" Text="Saturday" />
                    </td>
                  
                    <td class="auto-style9">
                        <asp:Label ID="Label24" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="startSat" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Height="19px" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td class="auto-style5"><asp:Label ID="Label25" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="endSat" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:CheckBox ID="chkSun" runat="server" Text="Sunday" />
                    </td>
                    
                    <td class="auto-style9">
                        <asp:Label ID="Label28" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="startSun" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Height="16px" Width="64px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td class="auto-style5"><asp:Label ID="Label29" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="endSun" runat="server" DataSourceID="HoursDS" DataTextField="Text" DataValueField="Text" Width="64px"></asp:DropDownList></td>
                </tr>
                  <tr>
                    <td class="auto-style6"></td>
                        <td class="auto-style10"> <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                   
                            &nbsp;&nbsp;
                   
                        <asp:Button ID="Button2" runat="server" Text="Cancel" /></td>
                </tr>
            </table>
            <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
            <br />
            <br />
        </div>
     <asp:ObjectDataSource ID="HoursDS" runat="server" SelectMethod="GetHours" TypeName="saassecurity.TimeHours"></asp:ObjectDataSource>
                    
</body>
</html>
</asp:Content>