<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register Src="~/Usercontrol/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <header  class=" head-banner banner-search-top" role="banner" style="margin-top: 135px;background-repeat: no-repeat;
    padding-top:41px;padding-bottom: 67px;background-image:url(../Uploadedfiles/Operators/Sheosar-Lake-by-National-Geographic.png);">
      
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12  text-center">
					<div class="display-t">
						<div class="display-tc animate-box sub-page" data-animate-effect="fadeIn">
							<h1>Sign In or Sign Up</h1>																					
							</div>
						</div>
					</div>
				</div>
			</div>
	
	</header>
  <div class="initial-info msg-box text-center" > <asp:Label style="color:red;border:1px solid;margin-top:20px;height:40px;" Visible="false" ID="lblMessage" runat="server" ></asp:Label></div>
    <div class="login">
       <div class="initial-info" style="padding:50px 0">
    <div class="col-sm-6" >
       
        <h2>Login</h2>
        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="txtNamelogin" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" CssClass="btn-subs" Text="Sign In" Style="margin-top:30px;" OnClick="btnLogin_Click" />
        <a ID="hlForgetpassword" href="forgetpasword.aspx">Lost Your Password?</a>
    </div>
    <div class="col-sm-6" style="border-left:1px solid gray;">
        <h2>Sign Up</h2>
        <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
         <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
         <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
         <asp:TextBox ID="txtUserEmail" runat="server"></asp:TextBox>
         <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
         <asp:TextBox ID="txtRPassword" TextMode="Password" runat="server"></asp:TextBox>
         <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
         <asp:TextBox ID="txtRCPassword" TextMode="Password" runat="server"></asp:TextBox>
         <asp:Button ID="btnRegister" runat="server" CssClass="btn-subs"  Style="margin-top:30px;" Text="Sign Up" OnClick="btnRegister_Click" />
    </div>
</div>
</div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

