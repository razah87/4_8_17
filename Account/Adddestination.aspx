<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin.master" AutoEventWireup="true" CodeFile="Adddestination.aspx.cs" Inherits="Account_Adddestination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="initial-info">
    <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
    <asp:TextBox ID="txtDesTitle" runat="server"></asp:TextBox>
        <asp:Label ID="lbldesdestion" runat="server" Text="Description"></asp:Label>
    <asp:TextBox ID="txtDesDescription" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox>
      <asp:Label ID="lblpfimage" runat="server" Text="Cover image"></asp:Label>
    <asp:FileUpload  ID="uplfDesprofile" runat="server" />
    <asp:Button ID="btnAddDestination" runat="server" Text="Save" OnClick="btnAddDestination_Click" />
        </div>
</asp:Content>

