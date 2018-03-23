<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSchedulebyS.aspx.cs" Inherits="saassecurity.ViewSchedulebyS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Schedule Information" Font-Underline="True" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
                   </td> <td></td><td></td><td>
                       <asp:Button ID="Button1" runat="server" Text="Start Scheduling" Font-Bold="True" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Site:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="End Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Security On Site:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Contact No:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Text="Check In Status" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr><td></td></tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Date:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Site:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="End Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Security On Site:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Contact No:" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="Check In Status" Font-Bold="True"></asp:Label>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>

                    </td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
