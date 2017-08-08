<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="Updatetour.aspx.cs" Inherits="Account_Updatetour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="ns-msg-box"><label id="lblmessage" runat="server" visible="false" height="50px" width="100%"></label></div>
    <div class="initial-info">
        
    <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
    <asp:TextBox ID="txtTitle_a" runat="server"></asp:TextBox>
    <asp:Label ID="lblDes" runat="server" Text="Destination"></asp:Label>
    <asp:DropDownList ID="ddlDestination_a" runat="server"></asp:DropDownList>
    <asp:Label ID="lblDesc" runat="server" Text="Description"></asp:Label>
    <asp:TextBox ID="txtDescription_a" TextMode="MultiLine" Columns="50" Rows="10" runat="server"></asp:TextBox>
    <asp:Label ID="lblMINAge" runat="server" Text="Minimum Age"></asp:Label>
    <asp:TextBox ID="txtMinimumage_a" runat="server"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Text="Departure Location"></asp:Label>
    <asp:TextBox ID="txtDeparturelocation_a" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Return Location"></asp:Label>
    <asp:TextBox ID="txtReturnlocation_a" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Departure Time"></asp:Label>
     <input id="txtDEparturetime_a" runat="server" type="time"/>
         <asp:Label ID="Label49" runat="server" Text="Tour Date"></asp:Label>
         <input id="datDate_a" runat="server" type="date" />
    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
    <asp:TextBox ID="txtAddress_a" runat="server"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Text="Detail Content"></asp:Label>
    <asp:TextBox ID="txtLocationContent_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Type"></asp:Label>
    <asp:DropDownList ID="ddlType_a" runat="server"></asp:DropDownList>
    <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
    <asp:TextBox ID="txtPrice_a" runat="server"></asp:TextBox>
        </div>
     <div class="initial-info"  >
            <asp:Label ID="Label8" runat="server" Text="Month of Tour"></asp:Label>
    <asp:DropDownList ID="ddlMonth_a" runat="server">
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
                                            </asp:DropDownList>
            <asp:Label ID="Label9" runat="server" Text="Included 1"></asp:Label>
      <asp:TextBox ID="txtIncluded1_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label10" runat="server" Text="Included 2"></asp:Label>
      <asp:TextBox ID="txtIncluded2_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label11" runat="server" Text="Included 3"></asp:Label>
      <asp:TextBox ID="txtIncluded3_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label12_a" runat="server" Text="Included 4"></asp:Label>
      <asp:TextBox ID="txtIncluded4_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label13_a" runat="server" Text="Included 5"></asp:Label>
      <asp:TextBox ID="txtIncluded5_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label14" runat="server" Text="Included 6"></asp:Label>
      <asp:TextBox ID="txtIncluded6_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label15" runat="server" Text="Included 7"></asp:Label>
      <asp:TextBox ID="txtIncluded7_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label16" runat="server" Text="Included 8"></asp:Label>
      <asp:TextBox ID="txtIncluded8_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label17" runat="server" Text="Included 9"></asp:Label>
      <asp:TextBox ID="txtIncluded9_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label18" runat="server" Text="Included 10"></asp:Label>
      <asp:TextBox ID="txtIncluded10_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label19" runat="server" Text="Tour Activity 1"></asp:Label>
    <asp:TextBox ID="txtTouractivity1_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label20" runat="server" Text="Tour Activity 2"></asp:Label>
    <asp:TextBox ID="txtTouractivity2_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label21" runat="server" Text="Tour Activity 3"></asp:Label>
    <asp:TextBox ID="txtTouractivity3_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label22" runat="server" Text="Tour Activity 4"></asp:Label>
    <asp:TextBox ID="txtTouractivity4_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label23" runat="server" Text="Tour Activity 5"></asp:Label>
    <asp:TextBox ID="txtTouractivity5_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label24" runat="server" Text="Tour Activity 6"></asp:Label>
    <asp:TextBox ID="txtTouractivity6_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label25" runat="server" Text="Tour Activity 7"></asp:Label>
    <asp:TextBox ID="txtTouractivity7_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label26" runat="server" Text="Tour Activity 8"></asp:Label>
    <asp:TextBox ID="txtTouractivity8_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label27" runat="server" Text="Tour Activity 9"></asp:Label>
    <asp:TextBox ID="txtTouractivity9_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label28" runat="server" Text="Tour Activity 10"></asp:Label>
    <asp:TextBox ID="txtTouractivity10_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label29" runat="server" Text="Duration Day"></asp:Label>
    <asp:TextBox ID="txtDurationDays_a" runat="server"></asp:TextBox>
          <asp:Label ID="Label30" runat="server" Text="Duration Night"></asp:Label>
    <asp:TextBox ID="txtDurationNights_a" runat="server"></asp:TextBox>
        
          <asp:Label ID="Label31" runat="server" Text="Feature Image"></asp:Label>
          <asp:FileUpload ID="fuFeatureimg_a" runat="server" />
         <asp:Label ID="Label32" runat="server" Text="Gallery image1"></asp:Label>
          <asp:FileUpload ID="fuGalleryimg1_a" runat="server" />
          <asp:Label ID="Label33" runat="server" Text="Gallery image2"></asp:Label>
           <asp:FileUpload ID="fuGalleryimg2_a" runat="server" />
          <asp:Label ID="Label34" runat="server" Text="Gallery image3"></asp:Label>
         <asp:FileUpload ID="fuGalleryimg3_a" runat="server" />
          <asp:Label ID="Label35" runat="server" Text="Gallery image4"></asp:Label>
         <asp:FileUpload ID="fuGalleryimg4_a" runat="server" />
          <asp:Label ID="Label36" runat="server" Text="Gallery image5"></asp:Label>
          <asp:FileUpload ID="fuGalleryimg5_a" runat="server" />
          <asp:Label ID="Label37" runat="server" Text="Hotel"></asp:Label>
    <asp:TextBox ID="txtHotel_a" runat="server"></asp:TextBox>
         <asp:Label ID="Label38" runat="server" Text="Day 1"></asp:Label>
    <asp:TextBox ID="txtPlan1_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label39" runat="server" Text="Day 2"></asp:Label>
    <asp:TextBox ID="txtPlan2_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label40" runat="server" Text="Day 3"></asp:Label>
    <asp:TextBox ID="txtPlan3_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label41" runat="server" Text="Day 4"></asp:Label>
    <asp:TextBox ID="txtPlan4_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label42" runat="server" Text="Day 5"></asp:Label>
    <asp:TextBox ID="txtPlan5_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label43" runat="server" Text="Day 6"></asp:Label>
    <asp:TextBox ID="txtPlan6_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label44" runat="server" Text="Day 7"></asp:Label>
    <asp:TextBox ID="txtPlan7_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label45" runat="server" Text="Day 8"></asp:Label>
    <asp:TextBox ID="txtPlan8_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label46" runat="server" Text="Day 9"></asp:Label>
    <asp:TextBox ID="txtPlan9_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
         <asp:Label ID="Label47" runat="server" Text="Day 10"></asp:Label>
    <asp:TextBox ID="txtPlan10_a" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
        <%-- <asp:Label ID="Label48" runat="server" Text="Day 11"></asp:Label>
    <asp:TextBox ID="txtPlan11" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:TextBox ID="txtPlan12" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:TextBox ID="txtPlan13" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:TextBox ID="txtPlan14" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:TextBox ID="txtPlan15" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>

    <asp:TextBox ID="txtPlan16" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:TextBox ID="txtPlan17" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:TextBox ID="txtPlan18" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:TextBox ID="txtPlan19" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>
    <asp:TextBox ID="txtPlan20" runat="server" TextMode="MultiLine" Columns="50" Rows="10"></asp:TextBox>--%>
         

         <asp:Button ID="btnUpdateTour" runat="server" Text="Update Tour"  style="margin:20px 0;" OnClick="btnUpdateTour_Click"/> 
         </div>
</asp:Content>

