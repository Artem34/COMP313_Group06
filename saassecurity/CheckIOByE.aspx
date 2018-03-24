<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CheckIOByE.aspx.cs" Inherits="saassecurity.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <table>
                <tr>
                    <td>
            <asp:Label ID="Label1" runat="server" Text="Check In / Check Out here:" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="  "></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Employee name: " ></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" Text="" ID="empName"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Site name: " ></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" Text="" ID="siteName"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="You are not checked in." ID="chkstatus"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td >
                    <asp:Button runat="server" Font-Bold="True" Text="Check In" ID="checkInE" />
   
                     <asp:Button runat="server" Font-Bold="True" Text="Check Out" ID="checkOutE" />
                      </td>  </tr>
            </table>
        </div>
</asp:Content>
