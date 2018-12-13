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

        .lastRow {
        padding-top:30px;
        }
        .firstRow {
        padding-bottom:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html>

<body>
    <div align="center">
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="5" HorizontalAlign="Center" CssClass="firstRow">
                     <asp:Label ID="Label1" runat="server" Text="Availability for Current Schedule:" Font-Bold="False" Font-Italic="False" Font-Size="Large" Font-Underline="False" style=""></asp:Label>
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
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" CssClass="lastRow">
                     <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" CssClass="btn btn-lg btn-primary btn-blocks"/>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center" CssClass="lastRow">
                    <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-lg btn-primary btn-blocks"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
   
      
       <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
            <br />
            <br />
      </div> 
     <asp:ObjectDataSource ID="HoursDS" runat="server" SelectMethod="GetHours" TypeName="saassecurity.TimeHours"></asp:ObjectDataSource>
                    
</body>
</html>
</asp:Content>