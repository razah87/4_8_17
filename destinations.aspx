<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="destinations.aspx.cs" Inherits="destinations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <header  class=" head-banner banner-search-top" role="banner" style="margin-top: 135px;background-repeat: no-repeat;
    padding-top:41px;padding-bottom: 67px;margin-bottom:30px; background-image:url(../Uploadedfiles/Operators/Sheosar-Lake-by-National-Geographic.png);">
                                            
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12  text-center">
					<div class="display-t">
						<div class="display-tc animate-box sub-page" data-animate-effect="fadeIn">
							<h1>Destinations</h1>
							
							
							</div>
						</div>
					</div>
				</div>
			</div>
	
	</header>
     
         <asp:Repeater ID="rptDestination" runat="server" OnItemCommand="rptDestination_ItemCommand">
             <ItemTemplate>
                 <div class="col-sm-3"><div class="imgdescontainer">
                    <asp:Image ImageUrl='<%#Eval("Profile_Image")%>' runat="server" Width="100%" Height="250px" ID="imgDestination" /></div>
                               <div class="destitleon">
                                   <asp:LinkButton  CommandArgument='<%# DataBinder.Eval(Container.DataItem, "Id")%>' runat="server"><h3><%#Eval("ds_Name")%></h3></asp:LinkButton>
                                 
                                    </div>
                     </div>
             </ItemTemplate>
         </asp:Repeater>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

