<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="Usercontrol_WebUserControl" %>
<div class="initial-info" style="padding:50px 0">
    <div class="col-sm-6" style="border-right:1px solid gray;">
        <asp:Label ID="lblMessage" runat="server" ></asp:Label>
        <h2>Login</h2>
        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="txtNamelogin" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" CssClass="btn-subs" Text="Sign In" Style="margin-top:30px;" OnClick="btnLogin_Click" />
        <a ID="hlForgetpassword" href="../getnewpassword.aspx">Lost Your Password?</a>
    </div>
    <div class="col-sm-6">
        <h2>Sign Up</h2>
        <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
         <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
         <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtUserEmail" runat="server"></asp:TextBox>
        <asp:Button ID="btnRegister" runat="server" CssClass="btn-subs"  Style="margin-top:30px;" Text="Sign Up" OnClick="btnRegister_Click" />
    </div>
</div>
