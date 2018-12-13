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

        .firstRow {
            padding-bottom: 30px;
        }

        .lastRow {
            padding-top: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">

        <asp:Table runat="server">

            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label Text="FORGOT PASSWORD" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" CssClass="firstRow">
                    <asp:Label ID="errorMsg" runat="server" ForeColor="Red"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell runat="server">User Name:</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">New Password:</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Confirm New Password:</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center" CssClass="lastRow">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Reset Password" CssClass="btn btn-lg btn-primary btn-blocks"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center" CssClass="lastRow">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Go back to login page</asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <ul style="list-style-type:none;">
            <li>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName" ErrorMessage=" *User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </li>
             <li>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage=" *Password is required" ForeColor="Red"></asp:RequiredFieldValidator>

            </li>
            <li>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage=" *Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>

            </li>
           
            
            <li>
                <asp:CompareValidator runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage=" *Confirm Password does not match password" ForeColor="Red"/>

            </li>
            <li>
                <asp:CompareValidator runat="server" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" ErrorMessage=" *Password does not match confirm password" ForeColor="Red"/>
             </li>
        </ul>
    </div>
</asp:Content>
