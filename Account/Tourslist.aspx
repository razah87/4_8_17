<%@ Page Title="" Language="C#" MasterPageFile="~/Account/Admin.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Tourslist.aspx.cs" Inherits="Account_Tourslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <%-- <asp:Repeater ID="ad_rptTours" runat="server" >
      
         <ItemTemplate>                  
             <div class="outwraper"  style="float:left;width:100%;clear:both;"><div class="ns_tour_id" >
                 <asp:Label ID="lblName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Id").ToString() %>'></asp:Label>
                 </div><div class="ns_tour_title""><asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Title").ToString() %>'></asp:Label></div>
                 <div class="ns_button">
                 <asp:Button ID="btnUpdate" runat="server" Text="Update" /><asp:Button ID="btnDelete" runat="server" Text="Delete" /><asp:Button ID="btnAdd" runat="server" Text="Add" /></div></div>

         </ItemTemplate>
 </asp:Repeater>--%>
     

    <asp:gridview ID="Gridview1" runat="server" AutoGenerateColumns="False" OnRowDeleting="Gridview1_RowDeleting" onrowupdating="Gridview1_RowUpdating"  ShowFooter="True">
        <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" />
        <asp:TemplateField HeaderText="Title">
            <ItemTemplate>
                 <asp:Label ID="lblName" runat="server" Text='<%#Bind("Id")%>'></asp:Label>
                 <asp:HiddenField ID="Hf_ID" runat="server" Value='<%# Eval("Id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Header 2">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Bind("Title")%>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
            
              <asp:Button ID="btnAddTour" runat="server" Text="Add new" OnClick="btnAddTour_Click"/>
              
            </ItemTemplate>
            <FooterStyle HorizontalAlign="Right" />
           
        </asp:TemplateField>
                      
            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
           
            <asp:ButtonField ButtonType="Button" CommandName="Update" Text="Update" />
           
        </Columns>
</asp:gridview>
    
</asp:Content>

