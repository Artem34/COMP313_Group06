<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddandUpdateAvailability.aspx.cs" Inherits="saassecurity.AddandUpdateAvailability" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Availability for Current Schedule:" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" /><asp:Label ID="Label2" runat="server" Text="MONDAY" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" /><asp:Label ID="Label3" runat="server" Text="All Day" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton2" runat="server" /><asp:Label ID="Label4" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td><asp:Label ID="Label5" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="1"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox2" runat="server" /><asp:Label ID="Label6" runat="server" Text="TUESDAY" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton3" runat="server" /><asp:Label ID="Label7" runat="server" Text="All Day" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton4" runat="server" /><asp:Label ID="Label8" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td><asp:Label ID="Label9" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox3" runat="server" /><asp:Label ID="Label10" runat="server" Text="WEDNESDAY" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton5" runat="server" /><asp:Label ID="Label11" runat="server" Text="All Day" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton6" runat="server" /><asp:Label ID="Label12" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td><asp:Label ID="Label13" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList6" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox4" runat="server" /><asp:Label ID="Label14" runat="server" Text="THURDDAY" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton7" runat="server" /><asp:Label ID="Label15" runat="server" Text="All Day" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton8" runat="server" /><asp:Label ID="Label16" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList7" runat="server">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td><asp:Label ID="Label17" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList8" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox5" runat="server" /><asp:Label ID="Label18" runat="server" Text="FRIDAY" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton9" runat="server" /><asp:Label ID="Label19" runat="server" Text="All Day" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton10" runat="server" /><asp:Label ID="Label20" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td><asp:Label ID="Label21" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList10" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox6" runat="server" /><asp:Label ID="Label22" runat="server" Text="SATURDAY" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton11" runat="server" /><asp:Label ID="Label23" runat="server" Text="All Day" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton12" runat="server" /><asp:Label ID="Label24" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList11" runat="server">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td><asp:Label ID="Label25" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList12" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox7" runat="server" /><asp:Label ID="Label26" runat="server" Text="SUNDAY" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton13" runat="server" /><asp:Label ID="Label27" runat="server" Text="All Day" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton14" runat="server" /><asp:Label ID="Label28" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList13" runat="server">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                        </asp:DropDownList></td><td><asp:Label ID="Label29" runat="server" Text="End Time:" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList14" runat="server"></asp:DropDownList></td>
                </tr>
                  <tr>
                    <td></td>
                        <td> <asp:Button ID="Button1" runat="server" Text="Save" />
                   
                        <asp:Button ID="Button2" runat="server" Text="Cancel" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
