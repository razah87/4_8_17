<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="comfirm.aspx.cs" Inherits="Account_comfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="" style="margin-top: 200px; min-height: 400px;text-align:center;">
        <h3 style="color:#000;">Thank you for confirmarion</h3>
        <asp:Label ID="Label1" runat="server" Text="Password" ></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Confirm password"></asp:Label>
        <asp:TextBox ID="txtConPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

