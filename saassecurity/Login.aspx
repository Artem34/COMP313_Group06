<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="saassecurity.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style4 {
            margin-right: 0px;
            text-align: center;
        }
        .auto-style5 {
            margin-left: 7px;
        }
        .form-signin .form-control {
          position: relative;
          box-sizing: border-box;
          height: auto;
          padding: 10px;
          font-size: 16px;
 
        }
        .form-signin .form-control:focus {
          z-index: 2;
        }
        .form-signin {
          width: 100%;
          max-width: 330px;
          padding: 15px;
          margin: 0 auto;
        }
        .form-signin .checkbox {
          font-weight: 400;
        }

        .labels {

        }


    </style>
    
</asp:Content>
<asp:Content ID="Content2" CssClass="text-center" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:Panel ID="Panel1" runat="server" CssClass="text-center" >
        <form name="login" class="form-signin">
        <br />

        
        <h2 class="h3 mb-3 font-weight-normal">Login</h2>
      
        <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>       
      
           <asp:Table runat="server" HorizontalAlign="Center" >
               <asp:TableRow>
                   <asp:TableCell>
                       <asp:Label Text="User Name:" runat="server" CssClass="labels"></asp:Label>
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Width="137px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator></label>
                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow>
                   <asp:TableCell>
                       <asp:Label Text="Password:" runat="server" />
                   </asp:TableCell>
                   <asp:TableCell>
                       <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"  TextMode="Password" Width="137px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator></label>
        
                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
       
        <asp:Button CssClass="btn btn-lg btn-primary btn-blocks" ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
           </form>
    <br />
    <br />
</asp:Panel>
</asp:Content>
