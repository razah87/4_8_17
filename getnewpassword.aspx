<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="getnewpassword.aspx.cs" Inherits="getnewpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Your Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtNewpassword" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Confarm Password"></asp:Label>
    <asp:TextBox ID="txtNewpwdcomfirm" runat="server"></asp:TextBox>
    <asp:Button ID="brnGetnewpwd" runat="server" Text="Submit" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

