<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="destination.aspx.cs" Inherits="destination" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <header  class=" head-banner banner-search-top" runat="server"  id="banheader" role="banner" style="margin-top: 135px;background-repeat: no-repeat;
    padding-top:41px;padding-bottom: 67px;margin-bottom:30px;">
                                            
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="display-t">
						<div class="display-tc animate-box sub-page" data-animate-effect="fadeIn">
							<h1><asp:Label ID="lbldTitle" runat="server"></asp:Label></h1>
							
							<div class="row searchrow">
								<div class="form-inline" id="Form1" runat="server">
									<div class="col-md-12">
										
                                            <div class="searchcontrols">
                                            <asp:TextBox ID="txtContactsSearch2"  placeholder="Type destination" runat="server"></asp:TextBox>
                                                
                                                <cc1:AutoCompleteExtender ServiceMethod="SearchCustomers" 
    MinimumPrefixLength="2"
    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" 
    TargetControlID="txtContactsSearch2"
    ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false">
</cc1:AutoCompleteExtender>

                                            </div>
                                            <%--<div class="searchcontrols"><asp:DropDownList ID="ddlDuration" runat="server">
                                              
                                            </asp:DropDownList></div>--%>
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
                                            <%--<div class="searchcontrols"> <asp:DropDownList ID="ddlType" AutoPostBack="false" runat="server">

                                                 <asp:ListItem>Tour Type</asp:ListItem>
                                                                         </asp:DropDownList></div>--%>
       
                                            <div class="searchcontrols"><asp:Button ID="btnSearch" runat="server" Text="Search"  class="" OnClick="btnSearch_Click" /></div>
                                          
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	
	</header>
  
     <div class="container sub-proper">
         <div class="col-sm-3 sidebar">
             <h3>Find Your Destination</h3>
          
             <div class="left-side-block">
                <h4>Categories</h4>
              
                 <asp:RadioButtonList ID="rblCategories" runat="server" OnSelectedIndexChanged="rblCategories_SelectedIndexChanged" ViewStateMode="Enabled" AutoPostBack="true">
                     
                 </asp:RadioButtonList>
                 </div>
             <hr />
              <div class="left-side-block">
                <h4>Price</h4>

                <asp:RadioButtonList ID="rblPrice" runat="server" OnSelectedIndexChanged="rblPrice_SelectedIndexChanged" ViewStateMode="Enabled"  AutoPostBack="true" >
                    <asp:ListItem>10000 to 30000</asp:ListItem>
                     <asp:ListItem>31000 to 60000</asp:ListItem>
                     <asp:ListItem>61000 to 100000</asp:ListItem>
                     <asp:ListItem>Above 100000</asp:ListItem>
                </asp:RadioButtonList>

            </div>
             <hr />
              <div class="left-side-block">
                <h4>Duration</h4>
                   <asp:RadioButtonList ID="rblDuration" runat="server" OnSelectedIndexChanged="rblDuration_SelectedIndexChanged" ViewStateMode="Enabled"  AutoPostBack="true">
                   <%-- <asp:ListItem>1 Day</asp:ListItem>
                     <asp:ListItem>2 Days</asp:ListItem>
                       <asp:ListItem>3 Days</asp:ListItem>
                       <asp:ListItem>4 Days</asp:ListItem>
                       <asp:ListItem>Above 5 Days</asp:ListItem>--%>
                    
                    
                    
                    
                </asp:RadioButtonList>
                  </div>
      
           </div>
        <div class="col-sm-9">
            <div class="destinatin-top-cont"> <p> <label id="lblContent" runat="server" ></label></p></div>
           
    <label id="lblmessage" runat="server" title="No records are available" visible="false"></label>
     <asp:Repeater ID="rptTours" runat="server" OnItemCommand="rptTours_ItemCommand" >
         <ItemTemplate>
       
             <div class="nstours">

<div class="nstourdescontainer">
<div class="nstitleimage"><img src="<%# DataBinder.Eval(Container.DataItem,"Feature_image") %>" style="width:100%;"/></div>
<div class="nstourdescrition">
    <div class="nstourstitlecontainer"><div class="title"><h2><%# DataBinder.Eval(Container.DataItem,"Title") %></h2></div><div class="daysnights"><h4>Rs. <%# DataBinder.Eval(Container.DataItem,"Price") %></h4></div><div></div></div>

<%--<p>Starting From:(Per Person)</p>--%>

<div class="nstourshotel">
<span>Hotel included in package:</span>
<div class="ns-hotel"><span><%# DataBinder.Eval(Container.DataItem,"Hotel") %></span></div>
    <div class="ns-day-night"><span><%# DataBinder.Eval(Container.DataItem,"Duration_day") %> Days</span> & <span><%# DataBinder.Eval(Container.DataItem,"Duration_night") %> Nights</span></div>
</div>
    <div class="nsbuttonconatiner">
    <asp:Button ID="btnCustomise" runat="server" Text="CUSTOMISE & GET QUOTES" /> 
        <asp:LinkButton Text="View Details" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "Id")%>' runat="server" />

</div>
</div>
</div>
<div class="nstourbottom"><div class="nstourinclusion">
<%--<ul>
    <li><%# DataBinder.Eval(Container.DataItem,"Included_1") %></li>
    <li><%# DataBinder.Eval(Container.DataItem,"Included_2") %></li>
    <li><%# DataBinder.Eval(Container.DataItem,"Included_3") %></li>
    <li><%# DataBinder.Eval(Container.DataItem,"Included_4") %></li>
    <li><%# DataBinder.Eval(Container.DataItem,"Included_5") %></li>
    <li><%# DataBinder.Eval(Container.DataItem,"Included_6") %></li>
    <li><%# DataBinder.Eval(Container.DataItem,"Included_7") %></li>

</ul>--%></div>
</div>
</div>

           </ItemTemplate>
        </asp:Repeater>
            </div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

