using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_AddTour : System.Web.UI.Page
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlDestination.DataSource = GetDestination();
        ddlDestination.DataTextField = "ds_Name";
        ddlDestination.DataValueField = "Id";
        ddlDestination.DataBind();

        ddlType.DataSource = GetCategories();
        ddlType.DataTextField = "cat_Title";
        ddlType.DataValueField = "cat_Id";
        ddlType.DataBind();
    }

    protected void btnAddTour_Click(object sender, EventArgs e)
    {
       AddTour();
       SaveFile();
       lblmessage.InnerText = "Tour has added successfuly";
       lblmessage.Visible = true;
    }

    public bool AddTour()
    {
        string savePath = "Uploadedfiles\\";

        // Get the name of the file to upload.
        string fileName = fuFeatureimg.FileName;
        string gal1 = fuGalleryimg1.FileName;
        string gal2 = fuGalleryimg2.FileName;
        string gal3 = fuGalleryimg3.FileName;
        string gal4 = fuGalleryimg4.FileName;
        string gal5 = fuGalleryimg5.FileName;

        SqlParameter[] param = new SqlParameter[] { 
        new SqlParameter("Title",txtTitle.Text),
        new SqlParameter("Destination_Id", ddlDestination.SelectedValue),
        new SqlParameter("Description",txtDescription.Text),
        new SqlParameter("Minimum_years_required",txtMinimumage.Text),
        new SqlParameter("Departure_Location",txtDeparturelocation.Text),
        new SqlParameter("Return_Location",txtReturnlocation.Text),
        new SqlParameter("Departure_Time",txtDEparturetime.Text),
        
        new SqlParameter("Address",txtAddress.Text),
        new SqlParameter("Location_Content", txtLocationContent.Text),
        //new SqlParameter("Reviews",),
        new SqlParameter("Category_id",ddlType.SelectedValue), 
        //new SqlParameter("Tags",),
        new SqlParameter("Price",txtPrice.Text),
        new SqlParameter("Month",ddlMonth.SelectedItem.Text),
        //new SqlParameter("",),
        new SqlParameter("Included_1",txtIncluded1.Text),
        new SqlParameter("Included_2",txtIncluded2.Text),
        new SqlParameter("Included_3",txtIncluded3.Text),
        new SqlParameter("Included_4",txtIncluded4.Text),
        new SqlParameter("Included_5",txtIncluded5.Text),
        new SqlParameter("Included_6",txtIncluded6.Text),
        new SqlParameter("Included_7",txtIncluded7.Text),
        new SqlParameter("Included_8",txtIncluded8.Text),
        new SqlParameter("Included_9",txtIncluded9.Text),
        new SqlParameter("Included_10",txtIncluded10.Text),
        new SqlParameter("Tour_Activities_1",txtTouractivity1.Text),
        new SqlParameter("Tour_Activities_2",txtTouractivity2.Text),
        new SqlParameter("Tour_Activities_3",txtTouractivity3.Text),
        new SqlParameter("Tour_Activities_4",txtTouractivity4.Text),
        new SqlParameter("Tour_Activities_5",txtTouractivity5.Text),
        new SqlParameter("Tour_Activities_6",txtTouractivity6.Text),
        new SqlParameter("Tour_Activities_7",txtTouractivity7.Text),
        new SqlParameter("Tour_Activities_8",txtTouractivity8.Text),
        new SqlParameter("Tour_Activities_9",txtTouractivity9.Text),
        new SqlParameter("Tour_Activities_10",txtTouractivity10.Text),
        new SqlParameter("Duration_day",txtDurationDays.Text),
        new SqlParameter("Duration_night",txtDurationNights.Text),
        new SqlParameter("Feature_image",savePath + fuFeatureimg.FileName.ToString()),
        new SqlParameter("Gallery_images_1",savePath + fuGalleryimg1.FileName.ToString()),
        new SqlParameter("Gallery_images_2",savePath + fuGalleryimg2.FileName.ToString()),
        new SqlParameter("Gallery_images_3",savePath + fuGalleryimg3.FileName.ToString()),
        new SqlParameter("Gallery_images_4",savePath + fuGalleryimg4.FileName.ToString()),
        new SqlParameter("Gallery_images_5",savePath + fuGalleryimg5.FileName.ToString()),
        new SqlParameter("Hotel",txtHotel.Text),
        new SqlParameter("Tour_plan_1",txtPlan1.Text),
        new SqlParameter("Tour_plan_2",txtPlan2.Text),
        new SqlParameter("Tour_plan_3",txtPlan3.Text),
        new SqlParameter("Tour_plan_4",txtPlan4.Text),
        new SqlParameter("Tour_plan_5",txtPlan5.Text),
        new SqlParameter("Tour_plan_6",txtPlan6.Text),
        new SqlParameter("Tour_plan_7",txtPlan7.Text),
        new SqlParameter("Tour_plan_8",txtPlan8.Text),
        new SqlParameter("Tour_plan_9",txtPlan9.Text),
        new SqlParameter("Tour_plan_10",txtPlan10.Text),
        new SqlParameter("Tour_Date", datDate.Text)
        //new SqlParameter("Tour_plan_11",txtPlan11.Text),
        //new SqlParameter("Tour_plan_12",txtPlan12.Text),
        //new SqlParameter("Tour_plan_13",txtPlan13.Text),
        //new SqlParameter("Tour_plan_14",txtPlan14.Text),
        //new SqlParameter("Tour_plan_15",),
        //new SqlParameter("Tour_plan_16",),
        //new SqlParameter("Tour_plan_17",),
        //new SqlParameter("Tour_plan_18",),
        //new SqlParameter("Tour_plan_19",),
        //new SqlParameter("Tour_plan_20",),
        //new SqlParameter("Tour_Date",d)
        
        };

        return dac.ExecuteNonQuery("AddTour", param) > 0 ? true:false;

        
    
    }

    public void SaveFile()
    {
        // Specify the path to save the uploaded file to.
        string savePath = "D:\\InetPub\\vhosts\\naturesurfers.com\\httpdocs\\Uploadedfiles\\";

        // Get the name of the file to upload.
        string fileName = fuFeatureimg.FileName;
        string gal1 = fuGalleryimg1.FileName;
        string gal2 = fuGalleryimg2.FileName;
        string gal3 = fuGalleryimg3.FileName;
        string gal4 = fuGalleryimg4.FileName;
        string gal5 = fuGalleryimg5.FileName;

        // Create the path and file name to check for duplicates.
        if (fuFeatureimg.HasFile)
        {
           
            fuFeatureimg.SaveAs(savePath + fileName);
        }
        if (fuGalleryimg1.HasFile)
        {

            fuFeatureimg.SaveAs(savePath + gal1);
        }
        if (fuGalleryimg2.HasFile)
        {

            fuFeatureimg.SaveAs(savePath + gal2);
        }
        if (fuGalleryimg3.HasFile)
        {

            fuFeatureimg.SaveAs(savePath + gal3);
        }
        if (fuGalleryimg4.HasFile)
        {

            fuFeatureimg.SaveAs(savePath + gal4);
        }
        if (fuGalleryimg5.HasFile)
        {

            fuFeatureimg.SaveAs(savePath + gal5);
        }



    }

    public DataTable GetDestination()
    {

        DataTable dt = dac.GetDataTable("Select_Destination");
        return dt;

    }

    public DataTable GetCategories()
    {

        DataTable dt = dac.GetDataTable("Select_Categories");
        return dt;

    }
}