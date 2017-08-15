<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="getnewpassword.aspx.cs" Inherits="getnewpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="initial-info" style="padding:200px 0;height:500px;">
           <p><asp:Label ID="lblMessage" runat="server" ></asp:Label></p>
    <asp:Label ID="Label1" runat="server" Text="Your Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtNewpassword" TextMode="Password" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Confarm Password"></asp:Label>
    <asp:TextBox ID="txtNewpwdcomfirm" TextMode="Password" runat="server"></asp:TextBox>
    <asp:RadioButtonList ID="rbtnchoice" runat="server">
        <asp:ListItem Value="0" Text="User" Selected="True"></asp:ListItem>
        <asp:ListItem Value="1" Text="Operator"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="brnGetnewpwd" runat="server" Text="Submit" OnClick="brnGetnewpwd_Click" />
         </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

