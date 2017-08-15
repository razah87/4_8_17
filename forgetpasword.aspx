<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="forgetpasword.aspx.cs" Inherits="forgetpasword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="initial-info" style="padding:200px 0;height:500px;">
         <p><asp:Label ID="lblMessage" runat="server" ></asp:Label></p>
        <p> <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
         <asp:TextBox ID="txtFGEmail" width="300px" runat="server"></asp:TextBox></p>
        
         <p style="padding:30px;text-align:center;clear:both;"><asp:Button ID="btnFG" runat="server" Width="150px" Text="Submit" OnClick="btnFG_Click" /></p>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

