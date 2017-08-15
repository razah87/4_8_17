<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="outerwrap">
    <div class="col-sm-12 userprof">
        <div class="col-sm-6 lft">
        <h2 style="color:#000;">Profile</h2>
        <asp:Label ID="err_message" CssClass="text-center" runat="server" Text=""></asp:Label>

       <p> <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label><br />
         <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></p>
        <p>  <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label><br />
         <asp:TextBox ID="txtUserEmail" runat="server"></asp:TextBox></p>
         <p> <asp:Label ID="Label2" runat="server" Text="Phone No."></asp:Label><br />
         <asp:TextBox ID="txtphone_no" runat="server"></asp:TextBox></p>
        <p>  <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label><br />
         <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></p>
        <p>  <asp:Label ID="Label6" runat="server" Text="Previous Password"></asp:Label><br />
         <asp:TextBox ID="txtRPassword" TextMode="Password" runat="server"></asp:TextBox></p>
        <p>  <asp:Label ID="Label7" runat="server" Text="New Password"></asp:Label><br />
         <asp:TextBox ID="txtRCPassword" TextMode="Password" runat="server"></asp:TextBox></p>

        <p>  <asp:Button ID="btnRegister" runat="server" CssClass="btn-subs"  Style="margin-top:30px;margin-bottom:30px" Text="Update" OnClick="btnRegister_Click" /></p>
    </div>
        <div class="col-sm-6">
            <h2  style="color:#000;">Bookings</h2>
        </div>
        </div>

    </div>

   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

