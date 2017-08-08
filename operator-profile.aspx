<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="operator-profile.aspx.cs" Inherits="operator_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    

    <div class="outerwrap">
    <div class="cover-top">
        <asp:Image ID="imgCoverimage" Width="100%" Height="300px" runat="server" />
        <div class="o-wraper">
        <div class="operator-img">
             <asp:Image ID="imgOperator"  runat="server" />
             <div class="o-title">
             <h5><asp:Label ID="lblOName" runat="server" ></asp:Label></h5>
             <asp:Label ID="lblOTitle" runat="server" ></asp:Label>
             <asp:Label ID="lblORating" runat="server" ></asp:Label>
         </div>
        </div>
           
        </div></div>

    
    <div class="txt-area">
        <asp:Label ID="lblOContent" runat="server" > </asp:Label>
    </div>
        <div class="traveller-reviews" visible="false" runat="server" id="trallerreviews">
            <h3>Traller Reviews</h3>
            <div class="trcontent"></div>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
<div>
        <div class="login">
       <div class="initial-info" style="padding:50px 0">
   
    <div class="col-sm-12">
        <h2 class="text-center">Update profile</h2>
        <asp:Label ID="err_message" CssClass="text-center" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
         <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
         <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
         <asp:TextBox ID="txtUserEmail" runat="server"></asp:TextBox>
         <asp:Label ID="Label6" runat="server" Text="Previous Password"></asp:Label>
         <asp:TextBox ID="txtRPassword" TextMode="Password" runat="server"></asp:TextBox>
         <asp:Label ID="Label7" runat="server" Text="New Password"></asp:Label>
         <asp:TextBox ID="txtRCPassword" TextMode="Password" runat="server"></asp:TextBox>

         <asp:Button ID="btnRegister" runat="server" CssClass="btn-subs"  Style="margin-top:30px;" Text="Update" OnClick="btnRegister_Click" />
    </div>
</div>
</div>
    </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>

