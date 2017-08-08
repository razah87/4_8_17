<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="operator-prof.aspx.cs" Inherits="Account_operator_prof" %>

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
							<h1>It's time to get ahead of the herd</h1>
							<h5>We help in-destination travel service providers distribute their products globally online.</h5>
							
							
							</div>
						</div>
					</div>
				</div>
			</div>
	
	</header>
    <div class="row">
				<div class="initial-info-top text-center">
                    <h3 style="color:#000;">NATURE SURFERS PROVIDES TRAVEL LEADS TO TOUR OPERATORS IN PAKISTAN</h3>

<p>We are pioneers in finding best tours of Pakistan and driven by our passion for leveraging technology to help tour agent/ tour operatos to get more people to maximize thier profit.</p>

				</div></div>
    <div class="initial-info">
        <div class="col-sm-12  text-center"> <h3>BASIC INFORMATION</h3>
             <div class="ns-msg-box"><label id="lblmessage" runat="server" visible="false" height="50px" width="100%"></label></div>
        </div>
    <div class="col-sm-6">
        <asp:Label ID="Label3" runat="server" Text="Company Name"></asp:Label>
        <asp:TextBox ID="txtOCompany" runat="server"></asp:TextBox>
        <asp:Label ID="lblOName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtOperatorName" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Email" ></asp:Label>
        <asp:TextBox ID="txtOEmail" runat="server" TextMode="Email"></asp:TextBox>
    </div>
    <div class="col-sm-6">
        <div class="input-width">
        <asp:Label ID="Label6" runat="server" Text="Phone" CssClass="" ></asp:Label>
        <asp:TextBox ID="txtOPhone" runat="server" TextMode="Phone" ></asp:TextBox>
        </div>
        <div class="input-width input-width-lft"><asp:Label ID="Label8" runat="server" Text="Country" ></asp:Label>
        <asp:DropDownList ID="ddlCountries" runat="server">
           <asp:ListItem>Afghanistan</asp:ListItem>
<asp:ListItem>Albania</asp:ListItem>
<asp:ListItem>Algeria</asp:ListItem>
<asp:ListItem>Andorra</asp:ListItem>
<asp:ListItem>Angola</asp:ListItem>
<asp:ListItem>Antigua and Barbuda</asp:ListItem>
<asp:ListItem>Argentina</asp:ListItem>
<asp:ListItem>Armenia</asp:ListItem>
<asp:ListItem>Australia</asp:ListItem>
<asp:ListItem>Austria</asp:ListItem>
<asp:ListItem>Azerbaijan</asp:ListItem>
<asp:ListItem>Bahamas</asp:ListItem>
<asp:ListItem>Bahrain</asp:ListItem>
<asp:ListItem>Bangladesh</asp:ListItem>
<asp:ListItem>Barbados</asp:ListItem>
<asp:ListItem>Belarus</asp:ListItem>
<asp:ListItem>Belgium</asp:ListItem>
<asp:ListItem>Belize</asp:ListItem>
<asp:ListItem>Benin</asp:ListItem>
<asp:ListItem>Bhutan</asp:ListItem>
<asp:ListItem>Bolivia</asp:ListItem>
<asp:ListItem>Bosnia and Herzegovina</asp:ListItem>
<asp:ListItem>Botswana</asp:ListItem>
<asp:ListItem>Brazil</asp:ListItem>
<asp:ListItem>Brunei</asp:ListItem>
<asp:ListItem>Bulgaria</asp:ListItem>
<asp:ListItem>Burkina Faso</asp:ListItem>
<asp:ListItem>Burundi</asp:ListItem>
<asp:ListItem>Cabo Verde</asp:ListItem>
<asp:ListItem>Cambodia</asp:ListItem>
<asp:ListItem>Cameroon</asp:ListItem>
<asp:ListItem>Canada</asp:ListItem>
<asp:ListItem>Central African Republic (CAR)</asp:ListItem>
<asp:ListItem>Chad</asp:ListItem>
<asp:ListItem>Chile</asp:ListItem>
<asp:ListItem>China</asp:ListItem>
<asp:ListItem>Colombia</asp:ListItem>
<asp:ListItem>Comoros</asp:ListItem>
<asp:ListItem>Democratic Republic of the Congo</asp:ListItem>
<asp:ListItem>Republic of the Congo</asp:ListItem>
<asp:ListItem>Costa Rica</asp:ListItem>
<asp:ListItem>Cote d'Ivoire</asp:ListItem>
<asp:ListItem>Croatia</asp:ListItem>
<asp:ListItem>Cuba</asp:ListItem>
<asp:ListItem>Cyprus</asp:ListItem>
<asp:ListItem>Czech Republic</asp:ListItem>
<asp:ListItem>Denmark</asp:ListItem>
<asp:ListItem>Djibouti</asp:ListItem>
<asp:ListItem>Dominica</asp:ListItem>
<asp:ListItem>Dominican Republic</asp:ListItem>
<asp:ListItem>Ecuador</asp:ListItem>
<asp:ListItem>Egypt</asp:ListItem>
<asp:ListItem>El Salvador</asp:ListItem>
<asp:ListItem>Equatorial Guinea</asp:ListItem>
<asp:ListItem>Eritrea</asp:ListItem>
<asp:ListItem>Estonia</asp:ListItem>
<asp:ListItem>Ethiopia</asp:ListItem>
<asp:ListItem>Fiji</asp:ListItem>
<asp:ListItem>Finland</asp:ListItem>
<asp:ListItem>France</asp:ListItem>
<asp:ListItem>Gabon</asp:ListItem>
<asp:ListItem>Gambia</asp:ListItem>
<asp:ListItem>Georgia</asp:ListItem>
<asp:ListItem>Germany</asp:ListItem>
<asp:ListItem>Ghana</asp:ListItem>
<asp:ListItem>Greece</asp:ListItem>
<asp:ListItem>Grenada</asp:ListItem>
<asp:ListItem>Guatemala</asp:ListItem>
<asp:ListItem>Guinea</asp:ListItem>
<asp:ListItem>Guinea-Bissau</asp:ListItem>
<asp:ListItem>Guyana</asp:ListItem>
<asp:ListItem>Haiti</asp:ListItem>
<asp:ListItem>Honduras</asp:ListItem>
<asp:ListItem>Hungary</asp:ListItem>
<asp:ListItem>Iceland</asp:ListItem>
<asp:ListItem>India</asp:ListItem>
<asp:ListItem>Indonesia</asp:ListItem>
<asp:ListItem>Iran</asp:ListItem>
<asp:ListItem>Iraq</asp:ListItem>
<asp:ListItem>Ireland</asp:ListItem>
<asp:ListItem>Israel</asp:ListItem>
<asp:ListItem>Italy</asp:ListItem>
<asp:ListItem>Jamaica</asp:ListItem>
<asp:ListItem>Japan</asp:ListItem>
<asp:ListItem>Jordan</asp:ListItem>
<asp:ListItem>Kazakhstan</asp:ListItem>
<asp:ListItem>Kenya</asp:ListItem>
<asp:ListItem>Kiribati</asp:ListItem>
<asp:ListItem>Kosovo</asp:ListItem>
<asp:ListItem>Kuwait</asp:ListItem>
<asp:ListItem>Kyrgyzstan</asp:ListItem>
<asp:ListItem>Laos</asp:ListItem>
<asp:ListItem>Latvia</asp:ListItem>
<asp:ListItem>Lebanon</asp:ListItem>
<asp:ListItem>Lesotho</asp:ListItem>
<asp:ListItem>Liberia</asp:ListItem>
<asp:ListItem>Libya</asp:ListItem>
<asp:ListItem>Liechtenstein</asp:ListItem>
<asp:ListItem>Lithuania</asp:ListItem>
<asp:ListItem>Luxembourg</asp:ListItem>
<asp:ListItem>Macedonia</asp:ListItem>
<asp:ListItem>Madagascar</asp:ListItem>
<asp:ListItem>Malawi</asp:ListItem>
<asp:ListItem>Malaysia</asp:ListItem>
<asp:ListItem>Maldives</asp:ListItem>
<asp:ListItem>Mali</asp:ListItem>
<asp:ListItem>Malta</asp:ListItem>
<asp:ListItem>Marshall Islands</asp:ListItem>
<asp:ListItem>Mauritania</asp:ListItem>
<asp:ListItem>Mauritius</asp:ListItem>
<asp:ListItem>Mexico</asp:ListItem>
<asp:ListItem>Micronesia</asp:ListItem>
<asp:ListItem>Moldova</asp:ListItem>
<asp:ListItem>Monaco</asp:ListItem>
<asp:ListItem>Mongolia</asp:ListItem>
<asp:ListItem>Montenegro</asp:ListItem>
<asp:ListItem>Morocco</asp:ListItem>
<asp:ListItem>Mozambique</asp:ListItem>
<asp:ListItem>Myanmar (Burma)</asp:ListItem>
<asp:ListItem>Namibia</asp:ListItem>
<asp:ListItem>Nauru</asp:ListItem>
<asp:ListItem>Nepal</asp:ListItem>
<asp:ListItem>Netherlands</asp:ListItem>
<asp:ListItem>New Zealand</asp:ListItem>
<asp:ListItem>Nicaragua</asp:ListItem>
<asp:ListItem>Niger</asp:ListItem>
<asp:ListItem>Nigeria</asp:ListItem>
<asp:ListItem>North Korea</asp:ListItem>
<asp:ListItem>Norway</asp:ListItem>
<asp:ListItem>Oman</asp:ListItem>
<asp:ListItem>Pakistan</asp:ListItem>
<asp:ListItem>Palau</asp:ListItem>
<asp:ListItem>Palestine</asp:ListItem>
<asp:ListItem>Panama</asp:ListItem>
<asp:ListItem>Papua New Guinea</asp:ListItem>
<asp:ListItem>Paraguay</asp:ListItem>
<asp:ListItem>Peru</asp:ListItem>
<asp:ListItem>Philippines</asp:ListItem>
<asp:ListItem>Poland</asp:ListItem>
<asp:ListItem>Portugal</asp:ListItem>
<asp:ListItem>Qatar</asp:ListItem>
<asp:ListItem>Romania</asp:ListItem>
<asp:ListItem>Russia</asp:ListItem>
<asp:ListItem>Rwanda</asp:ListItem>
<asp:ListItem>Saint Kitts and Nevis</asp:ListItem>
<asp:ListItem>Saint Lucia</asp:ListItem>
<asp:ListItem>Saint Vincent and the Grenadines</asp:ListItem>
<asp:ListItem>Samoa</asp:ListItem>
<asp:ListItem>San Marino</asp:ListItem>
<asp:ListItem>Sao Tome and Principe</asp:ListItem>
<asp:ListItem>Saudi Arabia</asp:ListItem>
<asp:ListItem>Senegal</asp:ListItem>
<asp:ListItem>Serbia</asp:ListItem>
<asp:ListItem>Seychelles</asp:ListItem>
<asp:ListItem>Sierra Leone</asp:ListItem>
<asp:ListItem>Singapore</asp:ListItem>
<asp:ListItem>Slovakia</asp:ListItem>
<asp:ListItem>Slovenia</asp:ListItem>
<asp:ListItem>Solomon Islands</asp:ListItem>
<asp:ListItem>Somalia</asp:ListItem>
<asp:ListItem>South Africa</asp:ListItem>
<asp:ListItem>South Korea</asp:ListItem>
<asp:ListItem>South Sudan</asp:ListItem>
<asp:ListItem>Spain</asp:ListItem>
<asp:ListItem>Sri Lanka</asp:ListItem>
<asp:ListItem>Sudan</asp:ListItem>
<asp:ListItem>Suriname</asp:ListItem>
<asp:ListItem>Swaziland</asp:ListItem>
<asp:ListItem>Sweden</asp:ListItem>
<asp:ListItem>Switzerland</asp:ListItem>
<asp:ListItem>Syria</asp:ListItem>
<asp:ListItem>Taiwan</asp:ListItem>
<asp:ListItem>Tajikistan</asp:ListItem>
<asp:ListItem>Tanzania</asp:ListItem>
<asp:ListItem>Thailand</asp:ListItem>
<asp:ListItem>Timor-Leste</asp:ListItem>
<asp:ListItem>Togo</asp:ListItem>
<asp:ListItem>Tonga</asp:ListItem>
<asp:ListItem>Trinidad and Tobago</asp:ListItem>
<asp:ListItem>Tunisia</asp:ListItem>
<asp:ListItem>Turkey</asp:ListItem>
<asp:ListItem>Turkmenistan</asp:ListItem>
<asp:ListItem>Tuvalu</asp:ListItem>
<asp:ListItem>Uganda</asp:ListItem>
<asp:ListItem>Ukraine</asp:ListItem>
<asp:ListItem>United Arab Emirates (UAE)</asp:ListItem>
<asp:ListItem>United Kingdom (UK)</asp:ListItem>
<asp:ListItem>United States of America (USA)</asp:ListItem>
<asp:ListItem>Uruguay</asp:ListItem>
<asp:ListItem>Uzbekistan</asp:ListItem>
<asp:ListItem>Vanuatu</asp:ListItem>
<asp:ListItem>Vatican City (Holy See)</asp:ListItem>
<asp:ListItem>Venezuela</asp:ListItem>
<asp:ListItem>Vietnam</asp:ListItem>
<asp:ListItem>Yemen</asp:ListItem>
<asp:ListItem>Zambia</asp:ListItem>
<asp:ListItem>Zimbabwe</asp:ListItem>
        </asp:DropDownList></div>

         <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="txtOAddress" runat="server"></asp:TextBox>
        <div class="input-width">
               <asp:Label ID="Label9" runat="server" Text="City" ></asp:Label>
        <asp:TextBox ID="txtCity" runat="server" ></asp:TextBox>
        </div>
        <div class="input-width input-width-lft">
        <asp:Label ID="Label10" runat="server" Text="Zipcode"  ></asp:Label>
        <asp:TextBox ID="txtZipcode" runat="server"  ></asp:TextBox>
        </div>
         

    </div>
        <div class="col-sm-12">
            <asp:Label ID="lblOD" runat="server" Text="Description"></asp:Label>
        <asp:TextBox ID="txtOperatorDes" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="lblContent" runat="server"  Text="About comapany"></asp:Label>
        <asp:TextBox ID="txtOperatorContent" TextMode="MultiLine" runat="server"></asp:TextBox>
             <div class="col-sm-6"><asp:Label ID="Label4" runat="server" Text="Upload cover image"></asp:Label>
        <asp:FileUpload ID="fuCoverfoto"  runat="server" BorderStyle="None" /></div>
            <div class="col-sm-6"><asp:Label ID="Label7" runat="server" Text="Profile Photo"></asp:Label>
        <asp:FileUpload ID="fuOProfileimage"  runat="server" BorderStyle="None" /></div>
        
        

        </div>

        </div>
    <div class="initial-info">
       <div class="col-sm-12 text-center"> <h3>TOUR INFORMATION</h3></div>
    <div class="col-sm-6">
         <asp:Label ID="Label11" runat="server" Text="Tour Type"></asp:Label>
        <asp:TextBox ID="txtTourtype" runat="server"></asp:TextBox>
         <asp:Label ID="Label13" runat="server" Text="Your Interested Areas"></asp:Label>
        <asp:TextBox ID="txtYourIA" runat="server"></asp:TextBox>
    </div>
    <div class="col-sm-6">
         <asp:Label ID="Label14" runat="server" Text="Year of Business Etablished"></asp:Label>
        <asp:TextBox ID="txtYearofbusiness" runat="server"></asp:TextBox>
         <asp:Label ID="Label15" runat="server" Text="Bookings Per Month"></asp:Label>
        <asp:TextBox ID="txtBookingpermonth" runat="server"></asp:TextBox>

    </div>
        </div>
         
     <div class="initial-info" style="text-align:center;">
                      
        <asp:Button ID="btnSaveoperator" Width="150px" style="float:none;margin:40px; background:#f35f55;color:#fff;" runat="server" Text="Save" OnClick="btnSaveoperator_Click" />

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

