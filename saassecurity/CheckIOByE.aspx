<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CheckIOByE.aspx.cs" Inherits="saassecurity.WebForm2" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
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
                        <asp:Label runat="server" Text="Employee Id: " ></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" Text="" ID="txtempid"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Site Id: " ></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" Text="" ID="txtsiteid"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Shift Date: "></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" Text="" ID="txtdate"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Start Time:" ></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" Text="" ID="txtStartime"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label runat="server" Text="End Time: "></asp:Label></td>
                    <td>
                        <asp:Label runat="server" Text="" ID="txtEndTime"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Status: " >       </asp:Label>                      
                    </td>
                    <td>
                     <asp:Label runat="server" Text="You are not checked in." ID="txtstatus"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td >
                    <asp:Button runat="server" Font-Bold="True" Text="Check In" ID="checkInE" OnClick="checkInE_Click" />
   
                     <asp:Button runat="server" Font-Bold="True" Text="Check Out" ID="checkOutE" OnClick="checkOutE_Click" />
                      </td>  </tr>
            </table>
        </div>
</asp:Content>
