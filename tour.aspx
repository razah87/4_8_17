<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="tour.aspx.cs" Inherits="tour" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="~/Usercontrol/requestaquat.ascx" TagPrefix="uc1" TagName="requestaquat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

        .for-tour-page{width:1170px;margin:auto;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="col-sm-12 single_tour" >
        <div class="col-sm-8">
        <div class="feature-img"><asp:Image ID="imgTop" Width="100%" Height="300px" runat="server"/>
             <div class="content-title"><h2><asp:label ID="lbltitle" runat="server"></asp:label></h2></div>
        </div>
            <div class="col-sm-12"><div class="left_date"><asp:Label ID="Label8" Text="Departure Date: " runat="server"></asp:Label><asp:Label ID="lblDeparture_left_date" runat="server"></asp:Label></div></div>
 <div class="days-tabs">
     <h3 style="text-align:center;"><span>YOU WILL DISCOVER...</span></h3>
     <ul><li>Day 1</li><li>Day 2</li><li>Day 3</li><li>Day 4</li><li>Day 5</li><li>Day 6</li><li>Day 7</li></ul>

 </div>
            <div class="tour-top-content"><asp:label ID="lblDescription" runat="server" ></asp:label></div>
            <h3 style="text-align:center;color:#000;font-weight:bold;">Detailed Programm of Tour</h3>
           
            <asp:Repeater ID="rptTour" runat="server">
            <ItemTemplate>
        <div class="tourplan">
            
<div class="firstday">
    <h3><span class="pre-title"><%# DataBinder.Eval(Container.DataItem,"Days") %></span><span class="after-title"><%# DataBinder.Eval(Container.DataItem,"p_Title") %></span></h3>

</div>
                <div class="tour-thumnail"><asp:Image ID="imgThumbnail" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"Plan_img") %>' runat="server" width="100%" />

                </div>
                <div class="first-day-content">
                    <p><%# DataBinder.Eval(Container.DataItem,"p_Content") %></p>
                    
                    <p><img src="images/001-checkered.png" width="15px" /><asp:Label ID="lblStages" runat="server" Text=" Stages" ></asp:Label><br />
                        <img src="images/002-home.png" width="15px" /><asp:Label ID="Label9" runat="server" Text=" Accomodation"></asp:Label>
                    </p>
                   
                </div>
               

</div>

           </ItemTemplate>
            </asp:Repeater>
                


            </div>

        
        <div class="col-sm-4 right-sidebar">
            <div class="operator-img">
                <asp:Image ID="imgOperatorsid" runat="server" /></div>
            <div class="operator-con">
                <asp:Label ID="lbl1231" runat="server" Text="Created by "></asp:Label><asp:Label ID="lblOperatorname" runat="server"></asp:Label><br />
               <asp:Label ID="lbl" runat="server" Text="Revews"></asp:Label><asp:Label ID="lblReviewscount" runat="server"></asp:Label>
                <asp:Label ID="lblagentlocation" runat="server"></asp:Label>
            </div>
             <div class="t-content col-sm-12" style="padding-top: 20px;">
        
         <div class="col-sm-6 related-tour" style="border-right: 1px solid #fff;"> 
             <asp:Label ID="Label1" runat="server" Text="Trip Length"></asp:Label>
             <h2><asp:Label ID="lblDayinnumber" runat="server"></asp:Label><asp:Label ID="Label7" runat="server" Text=" Days"></asp:Label></h2>
             <asp:Label ID="Label2" runat="server" Text="Choose your departure"></asp:Label>
         </div>
         <div class="col-sm-6 related-tour"> 
             <asp:Label ID="Label3" runat="server" Text="Price starting from"></asp:Label>
             <h2><asp:Label ID="Label6" runat="server" Text="RS "></asp:Label><asp:Label ID="lblTripamount" runat="server" ></asp:Label></h2>
             <asp:Label ID="Label5" runat="server" Text="Per person"></asp:Label>
         </div>
                  
             </div>

             <div class="col-sm-12" style="padding-top: 20px;">
                 <div class="sidebar_departure_date"><asp:Label ID="Label4" runat="server" Text="Departure Date: "></asp:Label><asp:Label ID="lblDeparturedate_sidebar" runat="server" ></asp:Label></div>
             </div>
            <div class="col-sm-12" style="padding-top: 20px;">
                 <div class="sidebar_departure_booknow"> <asp:Button ID="brnBooknowsidebar" runat="server" Text="Book Now" CssClass="sidebarbuttonbooknow" /></div>
             </div>

            <div class="col-sm-12 right-bar-btn">
                <div class="col-sm-6"><asp:Button ID="btnCreateyourtrip" runat="server" Text="Design Your Trip" CssClass="sidebarbutton" /></div>
               <div class="col-sm-6"> <asp:Button ID="btnAddfavourite" runat="server" Text="Add To Favourite"  CssClass="sidebarbutton"/></div>
               
            </div>
        </div>
    </div>

    <div class="col-sm-12 single_tour_cont" >
        
        <h2 style="background-color:#00686B;width:100%;padding:10px;text-align:center;margin:0;">Price Detail</h2>
        <h1 style="background-color:#EE4037;width:100%;padding:30px;text-align:center;margin:0;">Approx. Rs <asp:Label ID="lblTourPrice" runat="server" ></asp:Label> / <asp:Label ID="lblTourDays" runat="server" ></asp:Label> Days</h1>
       
             <div class="col-sm-6">
<h3 style="background-color:#9F2520;width:100%;">PRICE INCLUDES</h3>
            <p style="padding-top:20px;"> <asp:Label ID="lblIncludes1" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblIncludes2" runat="server"></asp:Label></p>
              <p> <asp:Label ID="lblIncludes3" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblIncludes4" runat="server"></asp:Label></p>
              <p> <asp:Label ID="lblIncludes5" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblIncludes6" runat="server"></asp:Label></p>
              <p> <asp:Label ID="lblIncludes7" runat="server"></asp:Label></p>
              <p> <asp:Label ID="lblIncludes8" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblIncludes9" runat="server"></asp:Label></p>
              <p> <asp:Label ID="lblIncludes10" runat="server"></asp:Label></p>
        </div>
        <div class="col-sm-6">
            <h3 style="background-color:#A4A5A7;width:100%;">PRICE DOES NOT INCLUDES</h3>
              <p style="padding-top:20px;"> <asp:Label ID="lblNotIn1" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblNotIn2" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblNotIn3" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblNotIn4" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblNotIn5" runat="server"></asp:Label></p>
              <p> <asp:Label ID="lblNotIn6" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblNotIn7" runat="server"></asp:Label></p>
              <p> <asp:Label ID="lblNotIn8" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblNotIn9" runat="server" ></asp:Label></p>
              <p> <asp:Label ID="lblNotIn10" runat="server"></asp:Label></p>
        </div>
    </div>
    <div class="col-sm-12 single_tour_cont" >
        <h3 style="text-align:center;padding-top:30px;color:#000;">Itinerary not quite right for you?</h3>
        <p style="text-align:center;padding-top:30px;"><a href="#" style="width:20%;background-color:#00686B;padding:10px 20px;color:#fff;">Create your tailor-made trip</a></p>
        <h3 style="text-align:center;padding:20px 0;color:#000;">We also recommend...</h3>
    </div>

     <div class="col-sm-12 single_tour_cont" style="padding-bottom:60px;">
     <h3 style="color:#EE4037;">IN THE SAME GEOGRAPHICAL ZONE</h3>
         <asp:Repeater ID="rptRTours" runat="server">
            <ItemTemplate>
         <div class="col-sm-4 related-tour">
             <div class="t-thumbnail">
                 <asp:Image ID="imgRtour" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"Feature_image") %>' Width="100%" runat="server" /></div>
             
             <div class="ttitle"><h2 style="background-color:#EE4037;width:100%;padding:5px;text-align:center;margin:0;"><%# DataBinder.Eval(Container.DataItem,"Title") %></h2> </div>
             <div class="col-sm-6"><h2 style="background-color:#00686B;width:100%;padding:5px;text-align:center;margin:0;"><%# DataBinder.Eval(Container.DataItem,"Duration_day") %> Days</h2></div><div class="col-sm-6"><h2 style="background-color:#40c1b9;width:100%;padding:5px;text-align:center;margin:0;">RS <%# DataBinder.Eval(Container.DataItem,"Price") %></h2></div>
           
             <%--<div class="t-content">
         <div class="col-sm-4 related-tour opt">
                 <asp:Image ID="imgOperator" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"O_Profileimage") %>' runat="server" />
             <asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"O_Name") %>'></asp:Label>
         </div>
         <div class="col-sm-4 related-tour"> 
             <asp:Label ID="Label1" runat="server" Text="Trip Length"></asp:Label>
             <h2><%# DataBinder.Eval(Container.DataItem,"Duration_day") %></h2>
             <asp:Label ID="Label2" runat="server" Text="Choose your departure"></asp:Label>
         </div>
         <div class="col-sm-4 related-tour"> 
             <asp:Label ID="Label3" runat="server" Text="Price starting from"></asp:Label>
             <h2><%# DataBinder.Eval(Container.DataItem,"Price") %></h2>
             <asp:Label ID="Label5" runat="server" Text="Per person"></asp:Label>
         </div>
                  
             </div>--%>
         </div>
                </ItemTemplate></asp:Repeater>
        
     </div>
   
    <!-- ModalPopupExtender -->
    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnCreateyourtrip"
        CancelControlID="btnClose" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    
    <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" Style="display: none">
        <div>
             <asp:Button ID="btnClose" runat="server" Text="Close" Style="float:right;" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <uc1:requestaquat runat="server" id="requestaquat" />
                   
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
       
    </asp:Panel>
     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

