<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewScheduleByE.aspx.cs" Inherits="saassecurity.ViewScheduleByE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
               <tr> <td><asp:Label ID="Label1" runat="server" Text="Current Schedule:" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="True"></asp:Label> 
  </td> </tr>   
                <tr><td> <asp:Label ID="Label2" runat="server" Text="Date:" Font-Bold="True"></asp:Label> 
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td><td>
                        <asp:Label ID="Label5" runat="server" Text="Site:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td><td>
                        <asp:Label ID="Label3" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="Label4" runat="server" Text="End Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
    </tr>  
                         <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="CheckIn" Font-Bold="True" /></td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Book Off" Font-Bold="True" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Upcoming Shifts:" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                 <tr><td> <asp:Label ID="Label7" runat="server" Text="Date:" Font-Bold="True"></asp:Label> 
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td><td>
                        <asp:Label ID="Label8" runat="server" Text="Site:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td><td>
                        <asp:Label ID="Label9" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="Label10" runat="server" Text="End Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
    </tr>  
                         <tr>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Book Off" Font-Bold="True" /></td>
                </tr>
               
                     <tr><td> <asp:Label ID="Label11" runat="server" Text="Date:" Font-Bold="True"></asp:Label> 
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td><td>
                        <asp:Label ID="Label12" runat="server" Text="Site:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td><td>
                        <asp:Label ID="Label13" runat="server" Text="Start Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                        <td><asp:Label ID="Label14" runat="server" Text="End Time:" Font-Bold="True"></asp:Label><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
    </tr>  
                         <tr>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="Book Off" Font-Bold="True" /></td>
                </tr>
               
               

            </table>
        </div>
    </form>
</body>
</html>
