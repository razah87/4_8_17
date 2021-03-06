﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="requestaquat.ascx.cs" Inherits="Usercontrol_requestaquat" %>
<div class="col-sm-12">
    <div class="col-sm-5 rightbg">
        <div class="req-from-cont">

<p><i class="mkdf-icon-simple-line-icon icon-check" style="margin-right:5px"></i>Tell us detials of your holiday plan.</p>
<p><i class="mkdf-icon-simple-line-icon icon-check" style="margin-right:5px"></i>Get Multiple quotes from expert agents.</p>
<p><i class="mkdf-icon-simple-line-icon icon-check" style="margin-right:5px"></i>Select &amp; book the best deal</p>
</div>
       <hr />
        <div class="req-from-cont_bottom">
<p>Pakistan: 051-2724098</p>
<p>Internation: (773) 956-5701</p>
<p>Email: info@naturesurfers.com</p>
</div>
    </div>
    <div class="col-sm-7 customquots">

        <h2 style="text-align:center;">Design your Trip</h2>
        <p><asp:Label ID="Label1" runat="server" Text="Destination"></asp:Label>
        <asp:TextBox ID="txtDestination" runat="server" MaxLength="50" Placeholder="Destination"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvcandidate" runat="server" ControlToValidate ="txtDestination" ErrorMessage="*" >
            </asp:RequiredFieldValidator>
        </p>
        <div class="leftbox"> <asp:Label ID="Label2" runat="server" Text="Departure Date"></asp:Label> <asp:TextBox ID="txtDeparturedate" runat="server"></asp:TextBox></div>
        <div class="rightbox">  <asp:Label ID="Label3" runat="server" Text="Number of days"></asp:Label><asp:TextBox ID="txtNOofdays"  MaxLength="2" runat="server"></asp:TextBox></div>
        <p style="clear:both;padding-top:20px;"> <asp:Label ID="Label4" runat="server" Text="Number of People"></asp:Label>
         <asp:TextBox ID="txtNOofpeople"  MaxLength="2" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="txtNOofpeople" ErrorMessage="*" >
            </asp:RequiredFieldValidator>
        </p>
        <p> <asp:Label ID="Label5" runat="server" Text="Phone No."></asp:Label>
         <asp:TextBox ID="txtPhoneno" runat="server"  MaxLength="11"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate ="txtPhoneno" ErrorMessage="*" >
            </asp:RequiredFieldValidator>

        </p>
        <p> <asp:Label ID="Label6" runat="server" Text="Your Name"></asp:Label>
         <asp:TextBox ID="txtYourname" runat="server" MaxLength="50"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="txtYourname" ErrorMessage="*" >
            </asp:RequiredFieldValidator>
        </p>
        <p> <asp:Label ID="Label7" runat="server" Text="Your Email"></asp:Label>
         <asp:TextBox ID="txtYouremail" MaxLength="50"  CausesValidation="true" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate ="txtYouremail" ErrorMessage="*" >
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="remail" runat="server" 
               ControlToValidate="txtYouremail" ErrorMessage="Enter your email" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
        </p>
         <p><asp:Button ID="btnCustomizequat" runat="server" Text="Request Quotes" Style="background:#EE4037;color:#fff;" OnClick="btnCustomizequat_Click" /></p>
         <p style="color:green;padding:5px;"><asp:Label ID="lblMessage" runat="server" style="color:green;font-size:12px;"></asp:Label>
    </div>

</div>
