<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddEmployeeByHR.aspx.cs" Inherits="saassecurity.WebForm1" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            font-weight: normal;
        }
        .auto-style6 {
            text-align: center;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">Add Employee<br />
        <br />
                        <b>
                        <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        </b>
                    </div>
        <div>
            <table class="" align="center">
                <tr>
                    <td>
                         <asp:Label ID="Label2" runat="server" Text="First Name:" Font-Bold="True" CssClass="auto-style5"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfName" runat="server" CssClass="auto-style4" Width="135px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                         <asp:Label ID="Label3" runat="server" Text="Last Name:" Font-Bold="True" CssClass="auto-style5"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlName" runat="server" CssClass="auto-style4" Width="135px"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                    <td>
                         <asp:Label ID="Label4" runat="server" Text="Email:" Font-Bold="True" CssClass="auto-style5"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style4" TextMode="Email" Width="135px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label5" runat="server" Text="DOB:" Font-Bold="True" CssClass="auto-style4"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdate" runat="server" CssClass="auto-style4" Width="135px"></asp:TextBox> (yyyy-mm-dd)
                    </td>
                   
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label6" runat="server" Text="Phone no.:" Font-Bold="True" CssClass="auto-style4"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtphn" runat="server" CssClass="auto-style4" TextMode="Phone" Width="135px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label7" runat="server" Text="Address:" Font-Bold="True" CssClass="auto-style4"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="auto-style4" TextMode="MultiLine" Width="135px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label8" runat="server" Text="Username:" Font-Bold="True" CssClass="auto-style4"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtuser" runat="server" CssClass="auto-style4" Width="135px"></asp:TextBox>
                    </td></tr>
                    <tr>
                    <td>
                         <asp:Label ID="Label9" runat="server" Text="Password:" Font-Bold="True" CssClass="auto-style4"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server" CssClass="auto-style4" TextMode="Password" Width="135px"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                         <asp:Label ID="Label10" runat="server" Text="Confirm password:" Font-Bold="True" CssClass="auto-style4"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcpwd" runat="server" CssClass="auto-style4" TextMode="Password" Width="135px"></asp:TextBox>
                    </td>
                </tr>

                 <tr>
                    <td>
                         <asp:Label ID="Label1" runat="server" Text="Role:" Font-Bold="True" CssClass="auto-style4"  ></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpRole" runat="server">
                            <asp:ListItem>Employee</asp:ListItem>
                            <asp:ListItem>Supervisor</asp:ListItem>
                            <asp:ListItem>HR</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                     
                </tr>

                <tr>
                    <td>
                         <asp:Label ID="Label11" runat="server" Text="Status:" Font-Bold="True" CssClass="auto-style4"  ></asp:Label>
                    </td>
                    <td>                        
                        <asp:RadioButtonList ID="statusRadio" runat="server">
                            <asp:ListItem Value="20">Part Time(20 Hours)</asp:ListItem>
                            <asp:ListItem Value="40">Full Time(40 Hours)</asp:ListItem>
                        </asp:RadioButtonList>
                        
                    </td>
                     
                </tr>

                <tr>
                    <td class="auto-style6">
                        <b>
                        <br />
                        </b>
                        <asp:Button runat="server"  ID="btnadd" Font-Bold="True" Text="Add" OnClick="btnadd_Click" CssClass="auto-style4"/>
                        <b>
                        <br />
                        <br />
                        </b>
                    </td>
                    <td>
                        <b>
                        <br />
                        </b>
                        <asp:Button runat="server" ID="btncancel" Font-Bold="True" Text="Cancel" OnClick="btncancel_Click" CssClass="auto-style4"/>
                        <b>
                        <br />
                        <br />
                        </b>
                    </td>
                </tr>
            </table>
        </div>
  
</asp:Content>
