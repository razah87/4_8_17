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
        <asp:Label ID="lblOContent" runat="server" ></asp:Label>
    </div>
        <div class="traveller-reviews" visible="false" runat="server" id="trallerreviews">
            <h3>Traller Reviews</h3>
            <div class="trcontent"></div>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

