<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
hello world
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
 
     <script src="Scripts/slider/jssor.slider-22.2.10.min.js"></script>
    <script type="text/javascript">
        jssor_1_slider_init = function () {

            var jssor_1_options = {
                $AutoPlay: true,
                $AutoPlaySteps: 4,
                $SlideDuration: 160,
                $SlideWidth: 300,
                $SlideSpacing: 4,
                $Cols: 4,
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$,
                    $Steps: 4
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$,
                    $SpacingX: 1,
                    $SpacingY: 1
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);


            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, '80%');
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*responsive code end*/
        };
    </script>
     <script type="text/javascript">
         jssor_4_slider_init = function () {

             var jssor_4_options = {
                 $AutoPlay: true,
                 $AutoPlaySteps: 4,
                 $SlideDuration: 160,
                 $SlideWidth: 275,
                 $SlideSpacing: 4,
                 $Cols: 4,
                 $ArrowNavigatorOptions: {
                     $Class: $JssorArrowNavigator$,
                     $Steps: 4
                 },
                 $BulletNavigatorOptions: {
                     $Class: $JssorBulletNavigator$,
                     $SpacingX: 1,
                     $SpacingY: 1
                 }
             };

             var jssor_4_slider = new $JssorSlider$("jssor_4", jssor_4_options);


             /*responsive code begin*/
             /*you can remove responsive code if you don't want the slider scales while window resizing*/
             function ScaleSlider() {
                 var refSize = jssor_4_slider.$Elmt.parentNode.clientWidth;
                 if (refSize) {
                     refSize = Math.min(refSize, '80%');
                     jssor_4_slider.$ScaleWidth(refSize);
                 }
                 else {
                     window.setTimeout(ScaleSlider, 30);
                 }
             }
             ScaleSlider();
             $Jssor$.$AddEvent(window, "load", ScaleSlider);
             $Jssor$.$AddEvent(window, "resize", ScaleSlider);
             $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
             /*responsive code end*/
         };
    </script>
     <script type="text/javascript">
         jssor_3_slider_init = function () {

             var jssor_3_options = {
                 $AutoPlay: true,
                 $AutoPlaySteps: 4,
                 $SlideDuration: 160,
                 $SlideWidth: 275,
                 $SlideSpacing: 4,
                 $Cols: 4,
                 $ArrowNavigatorOptions: {
                     $Class: $JssorArrowNavigator$,
                     $Steps: 4
                 },
                 $BulletNavigatorOptions: {
                     $Class: $JssorBulletNavigator$,
                     $SpacingX: 1,
                     $SpacingY: 1
                 }
             };

             var jssor_3_slider = new $JssorSlider$("jssor_3", jssor_3_options);


             /*responsive code begin*/
             /*you can remove responsive code if you don't want the slider scales while window resizing*/
             function ScaleSlider() {
                 var refSize = jssor_3_slider.$Elmt.parentNode.clientWidth;
                 if (refSize) {
                     refSize = Math.min(refSize, '80%');
                     jssor_1_slider.$ScaleWidth(refSize);
                 }
                 else {
                     window.setTimeout(ScaleSlider, 30);
                 }
             }
             ScaleSlider();
             $Jssor$.$AddEvent(window, "load", ScaleSlider);
             $Jssor$.$AddEvent(window, "resize", ScaleSlider);
             $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
             /*responsive code end*/
         };
    </script>
     <script type="text/javascript">
         jssor_2_slider_init = function () {

             var jssor_2_options = {
                 $AutoPlay: true,
                 $AutoPlaySteps: 4,
                 $SlideDuration: 160,
                 $SlideWidth: 275,
                 $SlideSpacing: 4,
                 $Cols: 4,
                 $ArrowNavigatorOptions: {
                     $Class: $JssorArrowNavigator$,
                     $Steps: 4
                 },
                 $BulletNavigatorOptions: {
                     $Class: $JssorBulletNavigator$,
                     $SpacingX: 1,
                     $SpacingY: 1
                 }
             };

             var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_2_options);


             /*responsive code begin*/
             /*you can remove responsive code if you don't want the slider scales while window resizing*/
             function ScaleSlider() {
                 var refSize = jssor_2_slider.$Elmt.parentNode.clientWidth;
                 if (refSize) {
                     refSize = Math.min(refSize, '80%');
                     jssor_1_slider.$ScaleWidth(refSize);
                 }
                 else {
                     window.setTimeout(ScaleSlider, 30);
                 }
             }
             ScaleSlider();
             $Jssor$.$AddEvent(window, "load", ScaleSlider);
             $Jssor$.$AddEvent(window, "resize", ScaleSlider);
             $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
             /*responsive code end*/
         };

    </script>
    <style>
        video#bgvid { 
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -100;
    -ms-transform: translateX(-50%) translateY(-50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    background: url(polina.jpg) no-repeat;
    background-size: cover; 
}

    </style>

     
   
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <header id="fh5co-header" class="fh5co-cover" role="banner" style="background-image:url(images/sliderfinal_.jpg);">
        
      
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h1>Planning a trip just fot easier with Nature Surfers</h1>
							<h2>We help you find & book top trips and social activities from all over Pakistan</h2>
							<div class="row searchrow">
								<div class="form-inline" id="Form1" runat="server">
									<div class="col-md-12">
										<div class="form-group">
                                            <div class="searchcontrols">
                                            <asp:TextBox ID="txtContactsSearch"  placeholder="Type destination" runat="server"></asp:TextBox>

                                            <%--<div class="searchcontrols"> <asp:DropDownList  AutoPostBack="false" ID="ddlDestination" runat="server" ></asp:DropDownList>--%>
                                                
                                                <cc1:AutoCompleteExtender ServiceMethod="SearchCustomers" 
    MinimumPrefixLength="2"
    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" 
    TargetControlID="txtContactsSearch"
    ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false">
</cc1:AutoCompleteExtender>

                                            </div>
                                            <div class="searchcontrols"><asp:DropDownList ID="ddlDuration" runat="server">
                                                <%--<asp:ListItem>Duration</asp:ListItem>
                                                <asp:ListItem>1 Days</asp:ListItem>
                                                <asp:ListItem>2 Days</asp:ListItem>
                                                <asp:ListItem>3 Days</asp:ListItem>
                                                <asp:ListItem>4 Days</asp:ListItem>
                                                <asp:ListItem>5 Days</asp:ListItem>
                                                <asp:ListItem>6 Days</asp:ListItem>
                                                <asp:ListItem>7 Days</asp:ListItem>
                                                <asp:ListItem>8 Days</asp:ListItem>
                                                <asp:ListItem>9 Days</asp:ListItem>
                                                <asp:ListItem>10 Days</asp:ListItem>
                                                <asp:ListItem>More than 10 days</asp:ListItem>--%>
                                            </asp:DropDownList></div>
                                            <div class="searchcontrols"> <asp:DropDownList ID="ddlMonth" runat="server">
                                                 <asp:ListItem>Month of Travel</asp:ListItem>
                                                <asp:ListItem>January</asp:ListItem>
                                                <asp:ListItem>February</asp:ListItem>
                                                <asp:ListItem>March</asp:ListItem>
                                                <asp:ListItem>April</asp:ListItem>
                                                <asp:ListItem>May</asp:ListItem>
                                                <asp:ListItem>June</asp:ListItem>
                                                <asp:ListItem>July</asp:ListItem>
                                                <asp:ListItem>August</asp:ListItem>
                                                <asp:ListItem>September</asp:ListItem>
                                                <asp:ListItem>October</asp:ListItem>
                                                <asp:ListItem>November</asp:ListItem>
                                                <asp:ListItem>December</asp:ListItem>
                                            </asp:DropDownList></div>
                                            <div class="searchcontrols"> <asp:DropDownList ID="ddlType" AutoPostBack="false" runat="server">

                                                 <asp:ListItem>Tour Type</asp:ListItem>
                                                                         </asp:DropDownList></div>
       
                                            <div class="searchcontrols"><asp:Button ID="btnSearch" runat="server" Text="Search"  class="search-btn" OnClick="btnSearch_Click" /></div>
                                          
											
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	
	</header>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <div class="container">
			<div class="row">
                <div class="col-sm-3 top-box">
                    <img src="images/Personalizepalns.png" /><h5>YOUR HOLIDAY PLAN</h5><p>Tell us your plans with little details and we will plan your dream holiday</p></div>
                <div class="col-sm-3 top-box">
                    <img src="images/check-1.png" /><h5>GET MULTIPLE QUOTES</h5><p>Once you share your requirements we will provide quotes from 3 top travel agents</p></div>
                <div class="col-sm-3 top-box">
                    <img src="images/Personalizepalns-pack.png" /><h5>CUSTOMIZE YOUR PACKAGE</h5><p>Customize your vacation based on your requirements. Including your stay, activities, offbeat places and more</p></div>
                 <div class="col-sm-3 top-box">
                    <img src="images/money.png" /><h5>PAY & BOOK</h5><p>Pay online through our secure system and we will take care of the rest for you</p></div>
			</div>

        </div>

    </section>
    <section> <div class="container">
			<div class="row">
                <div class="heading">
                <h1>Best Holiday Experiences For You In Pakistan</h1>
                  Unlimited Choices. Trusted Agents. Best Prices. Happy Memories.
                </div>
                <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:350px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" class="ns_hom_slides" style="height:350px">
            <div  class="sld">
             <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                  <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>

            </div>
            
            <div class="sld">
                <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                 <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
                <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                 <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
               <img src="images/thumbnails/placeholder.jpg" />
                <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
               <img src="images/thumbnails/placeholder.jpg" />
                <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>

           
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb03" style="bottom:10px;right:10px;">
           
            <div data-u="prototype" style="width:21px;height:21px;">
                <div data-u="numbertemplate"></div>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora03r" style="top:0px;right:8px;width:55px;height:55px;" data-autocenter="2"></span>
    </div>
     <script type="text/javascript">jssor_1_slider_init();</script>


			

        </div>
        </div>
        </section>
    <section> <div class="container destinatin-cont">
			<div class="row">
                <div class="heading">
                <h1>Top Destinations In Pakistan</h1>

			</div>
                <div class="col-sm-3-f"><div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div>
                    
                </div>
                <div class="col-sm-3-f"><div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"><div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>

			</div>

        </div></section>
    <section> <div class="container">
			<div class="row">
                <div class="heading">
                <h1>Best International Holiday Tours</h1></div>
                     <div id="jssor_2" style="position:relative;margin:0 auto;top:0px;left:0px;width:1110px;height:350px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" class="ns_hom_slides" style="height:280px">
            <div  class="sld">
             <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                  <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>

            </div>
            
            <div class="sld">
                <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                 <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
                <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                 <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
               <img src="images/thumbnails/placeholder.jpg" />
                <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
               <img src="images/thumbnails/placeholder.jpg" />
                <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>

           
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb03" style="bottom:10px;right:10px;">
           
            <div data-u="prototype" style="width:21px;height:21px;">
                <div data-u="numbertemplate"></div>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora03r" style="top:0px;right:8px;width:55px;height:55px;" data-autocenter="2"></span>
    </div><script type="text/javascript">jssor_2_slider_init();</script>
			</div>

        </div></section>
    <section> <div class="container destinatin-cont">
			<div class="row">
                <div class="heading">
                <h1>Top International Destination</h1>

			</div>
                <div class="col-sm-3-f"><div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div>
                    
                </div>
                <div class="col-sm-3-f"><div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"><div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>
                <div class="col-sm-3-f"> <div class="des-thumbnail"> <img src="images/thumbnails/placeholder.jpg" width="100%" /></div><div class="img-caption"><h3>Murree</h3></div></div>

			</div>

        </div></section>
    <section> <div class="container">
			<div class="row">
                <div class="heading">
                <h1>Tour Activities</h1>
                    </div>
                 <div id="jssor_3" style="position:relative;margin:0 auto;top:0px;left:0px;width:1110px;height:350px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" class="ns_hom_slides" style="height:280px">
            <div  class="sld">
             <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                  <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>

            </div>
            
            <div class="sld">
                <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                 <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
                <a href="#"><img src="images/thumbnails/placeholder.jpg" /></a>
                 <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
               <img src="images/thumbnails/placeholder.jpg" />
                <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>
            <div class="sld">
               <img src="images/thumbnails/placeholder.jpg" />
                <div class="event-title">  <span class="ns_title"><a href="#">Title</a></span><span class="price">PKR 20000</span></div>
            </div>

           
        </div>
        <!-- Bullet Navigator -->
        <%--<div data-u="navigator" class="jssorb03" style="bottom:10px;right:10px;">
           
            <div data-u="prototype" style="width:21px;height:21px;">
                <div data-u="numbertemplate"></div>
            </div>
        </div>--%>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora03r" style="top:0px;right:8px;width:55px;height:55px;" data-autocenter="2"></span>
    </div><script type="text/javascript">jssor_3_slider_init();</script>
			</div>

        </div></section>
  
    
      
    
<!--Video Section-->
<section class="content-section video-section" >
  <div class="pattern-overlay">
      <iframe width="100%" height="500" src="https://www.youtube.com/embed/KOZZmiNZGOs" frameborder="0" allowfullscreen></iframe>
    
 <%-- <a id="bgndVideo" class="player" data-property="{videoURL:'~/images/4270520.mp4',containment:'.video-section', quality:'large', autoPlay:true, mute:true, opacity:1}">bg</a>--%>
     <%-- <video playsinline autoplay muted loop  id="bgvid">
    <source src="polina.webm" type="video/webm">
    <source src="images/4270520.mp4" type="video/mp4">
</video>--%>
   <%-- <div class="container">
        <video src="images/videoplayback.mp4"  autoPlay loop ></video>
      <div class="row">
        <div class="col-lg-12">
        <h1><span class="glyphicon glyphicon-play-circle"></span></h1>  
        <h3>Enjoy Adding Full Screen Videos to your Page Sections</h3>
	   </div>
      </div>
    </div>--%>
  </div>

   
</section>

        
        
    <section class="ftr-top-cta"> <div class="container">
			<div class="row">
               
                <div class="col-sm-9"><p style="font-size:25px;font-weight:300;">It’s Time For a New Adventure! Don’t Wait Any Longer. Contact us!</p></div><div class="col-sm-3"><a href="#" class="btn">BOOK DESTINATION</a></div>
			</div>

        </div></section>
     <link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'/>
    <script src="Scripts/jquery-1.10.2.js"></script>
<script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>
    <script>
        $(document).ready(function () {
            $(".player").mb_YTPlayer();
        });
</script>
</asp:Content>


