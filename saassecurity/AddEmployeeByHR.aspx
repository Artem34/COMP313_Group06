<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddEmployeeByHR.aspx.cs" Inherits="saassecurity.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Add Employee:" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="  "></asp:Label>
                    </td>
                    <td></td>
                </tr>
                
                <tr>
                    <td >
                         <asp:RadioButton ID="RadioButton1" Text=" New Employee" Font-Bold="True" runat="server"  />
                    </td>
                     <td >
                    <asp:RadioButton ID="RadioButton2" Text=" Returning Employee" Font-Bold="True" runat="server"  />                    
                     </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label2" runat="server" Text="First Name:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                         <asp:Label ID="Label3" runat="server" Text="Last Name:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlName" runat="server"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                    <td>
                         <asp:Label ID="Label4" runat="server" Text="Email:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label5" runat="server" Text="DOB:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label6" runat="server" Text="Phone no.:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtphn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label7" runat="server" Text="Address:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label8" runat="server" Text="Username:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                    </td></tr>
                    <tr>
                    <td>
                         <asp:Label ID="Label9" runat="server" Text="Password:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                         <asp:Label ID="Label10" runat="server" Text="Confirm password:" Font-Bold="True"  ></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcpwd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server"  ID="btnsave" Font-Bold="True" Text="Save"/>
                    </td>
                    <td>
                        <asp:Button runat="server" ID="btncancel" Font-Bold="True" Text="Cancel"/>
                    </td>
                </tr>
            </table>
        </div>
  
</asp:Content>
