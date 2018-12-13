<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddEmployeeByHR.aspx.cs" Inherits="saassecurity.WebForm1" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .firstRow {
            padding-bottom:30px;
        }
        .lastRow {
            padding-top:15px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" >
        <div style="margin-bottom:20px">
            <asp:Label Text="Add Employee" runat="server" />
        </div>
        <div style="margin-bottom:20px">
            <asp:Label Text="Upload a Csv: " runat="server"/>
            <asp:FileUpload runat="server" id="uploadCsvControl" />
           
            <asp:Button runat="server" ID="btnUploadCsv" OnClick="UploadEmployees" Text="Upload" CausesValidation="False" />
        </div>
        
       <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center" CssClass="firstRow">
                          <asp:Label runat="server" Text="or" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                           <asp:Label ID="lblErrorMsg" runat="server" ForeColor="Red"></asp:Label>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label2" runat="server" Text="First Name:" ></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtfName" runat="server" CssClass="auto-style4" Width="135px"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfName" ErrorMessage=" *First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtlName" runat="server" CssClass="auto-style4" Width="135px"></asp:TextBox>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label4" runat="server" Text="Email:" ></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style4" TextMode="Email" Width="135px"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage=" *Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label5" runat="server" Text="DOB:"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtdate" runat="server" Width="135px" placeholder="(yyyy-mm-dd)" ></asp:TextBox> 
                    </asp:TableCell><asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdate" ErrorMessage=" *Date of Birth is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label6" runat="server" Text="Phone no.:"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtphn" runat="server" CssClass="auto-style4" TextMode="Phone" Width="135px"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtphn" ErrorMessage=" *Phone Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="auto-style4" TextMode="MultiLine" Width="135px"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage=" *Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label8" runat="server" Text="Username:"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtuser" runat="server" CssClass="auto-style4" Width="135px"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuser" ErrorMessage=" *User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label9" runat="server" Text="Password:"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtpwd" runat="server" CssClass="auto-style4" TextMode="Password" Width="135px"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpwd" ErrorMessage=" *Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label10" runat="server" Text="Confirm password:"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox ID="txtcpwd" runat="server" CssClass="auto-style4" TextMode="Password" Width="135px"></asp:TextBox>
                    </asp:TableCell><asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcpwd" ErrorMessage=" *Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label1" runat="server" Text="Role:"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:DropDownList ID="drpRole" runat="server" Width="135px">
                            <asp:ListItem>Employee</asp:ListItem>
                            <asp:ListItem>Supervisor</asp:ListItem>
                            <asp:ListItem>HR</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                         <asp:Label ID="Label11" runat="server" Text="Status:"></asp:Label>
                    </asp:TableCell><asp:TableCell>                        
                        <asp:RadioButtonList ID="statusRadio" runat="server">
                            <asp:ListItem Value="20">Part Time(20 Hours)</asp:ListItem>
                            <asp:ListItem Value="40">Full Time(40 Hours)</asp:ListItem>
                        </asp:RadioButtonList>
                        
                    </asp:TableCell><asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="statusRadio" ErrorMessage=" *Status is required" ForeColor="Red"></asp:RequiredFieldValidator>
               
               </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center" CssClass="lastRow">                        
                        <asp:Button runat="server"  ID="btnadd" Font-Bold="True" Text="Add" OnClick="btnadd_Click" CssClass="btn btn-lg btn-primary btn-blocks"/>                       
                    </asp:TableCell><asp:TableCell HorizontalAlign="Center" CssClass="lastRow">                      
                        <asp:Button runat="server" ID="btncancel" Font-Bold="True" Text="Cancel" OnClick="btncancel_Click" CssClass="btn btn-lg btn-primary btn-blocks"/>                      
                    </asp:TableCell></asp:TableRow></asp:Table></div></asp:Content>