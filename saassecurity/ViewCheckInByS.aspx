<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewCheckInByS.aspx.cs" Inherits="saassecurity.WebForm3" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        
        <asp:Label runat="server" Text="Schedule Information"  Font-Bold="False"  Font-Size="Large" Font-Underline="False"></asp:Label>
     <br />
        <br />
        <asp:Repeater ID="site" runat="server">
                            <ItemTemplate>        
                                 
                                <table>                                
                                    <tr>                                
                                      <td align="right"><strong><asp:Label runat="server" Text="Site: "></asp:Label></strong></td>  <td> <asp:Label runat="server" Text='<%# Eval("siteName") %>'></asp:Label></td>
                                      <td align="right"><asp:Label runat="server" Text="Start time: "></asp:Label></td>  <td> <asp:Label runat="server" Text='<%# Eval("startTime") %>'></asp:Label></td>                                       
                                    <td  align="right"><asp:Label runat="server" Text="End time: "></asp:Label></td>    <td> <asp:Label runat="server" Text='<%# Eval("endTime") %>'></asp:Label></td>                                       
                                    </tr>
                                    <tr>
                                   <td></td>
                                      <td ><asp:Label runat="server" Text="Security on site: "></asp:Label></td>  <td> <asp:Label runat="server" Text='<%# Eval("firstName") %>' ></asp:Label></td>                                                              
                                    <td></td>
                                        <td><asp:Label runat="server" Text="Security contact: "></asp:Label></td>    <td> <asp:Label runat="server" Text='<%# Eval("contactNum") %>'></asp:Label></td>                                       
                                    </tr>
                                    <tr>
                                    <td colspan="2" align="right"><asp:Label runat="server" Text="Check in status: "></asp:Label></td>    <td> <asp:Label runat="server" Text='<%# Eval("checkInStatus") %>'></asp:Label></td>                                       
                                    </tr>                                  
                              </table>   
                                  <br />
                          </ItemTemplate>
                        </asp:Repeater>
    </div>

</asp:Content>
