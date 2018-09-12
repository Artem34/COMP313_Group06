<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="saassecurity.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 31px;
            text-align: center;
        }
        .auto-style5 {
            height: 165px;
            width: 784px;
            }
        .auto-style6 {
            text-align: center;
        }
        .auto-style8 {
            margin-top: 0px;
        }
        .auto-style9 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" Height="247px" Width="789px">
        <div class="auto-style4">
            FORGOT PASSWORD
        </div>
        <div class="auto-style5" style="align-content:center">
            <div class="auto-style6">
                <div class="auto-style6">
                    <asp:Label ID="errorMsg" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
                        <div class="auto-style9">
                            &nbsp;&nbsp;
                            <div class="auto-style9">
                                <asp:Table ID="Table1" runat="server" CssClass="auto-style8" Width="324px" HorizontalAlign ="Center">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server">User Name:</asp:TableCell>
                                        <asp:TableCell runat="server">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server">New Password:</asp:TableCell>
                                        <asp:TableCell runat="server">
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server">Confirm New Password:</asp:TableCell>
                                        <asp:TableCell runat="server">
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                           
                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
            <div class="auto-style6">
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Reset Password" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Go back to login page</asp:HyperLink>
                <br />
                <br />
                <br />
                <br />
                
            </div>
        </div>
    </asp:Panel>
    </div>
</asp:Content>
