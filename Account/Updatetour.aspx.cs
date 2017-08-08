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

public partial class Account_Updatetour : System.Web.UI.Page
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var t_id = Session["tour_id"];
            Get_Tour_by_id(t_id.ToString());
            ddlDestination_a.DataSource = GetDestination();
            ddlDestination_a.DataTextField = "ds_Name";
            ddlDestination_a.DataValueField = "Id";
            ddlDestination_a.DataBind();

            ddlType_a.DataSource = GetCategories();
            ddlType_a.DataTextField = "cat_Title";
            ddlType_a.DataValueField = "cat_Id";
            ddlType_a.DataBind();
        }
    }

    protected void btnUpdateTour_Click(object sender, EventArgs e)
    {
        var t_id = Session["tour_id"];
        string savePath = "Uploadedfiles\\";

        // Get the name of the file to upload.
        string fileName = fuFeatureimg_a.FileName;
        string gal1 = fuGalleryimg1_a.FileName;
        string gal2 = fuGalleryimg2_a.FileName;
        string gal3 = fuGalleryimg3_a.FileName;
        string gal4 = fuGalleryimg4_a.FileName;
        string gal5 = fuGalleryimg5_a.FileName;

        SqlParameter[] param = new SqlParameter[] { 
        new SqlParameter("Id",t_id.ToString()),
        new SqlParameter("Title",txtTitle_a.Text),
        new SqlParameter("Destination_Id", ddlDestination_a.SelectedValue),
        new SqlParameter("Description",txtDescription_a.Text),
        new SqlParameter("Minimum_years_required",txtMinimumage_a.Text),
        new SqlParameter("Departure_Location",txtDeparturelocation_a.Text),
        new SqlParameter("Return_Location",txtReturnlocation_a.Text),
        new SqlParameter("Departure_Time",txtDEparturetime_a.Value.ToString()),
        
        new SqlParameter("Address",txtAddress_a.Text),
        new SqlParameter("Location_Content", txtLocationContent_a.Text),
        //new SqlParameter("Reviews",),
        new SqlParameter("Category_id",ddlType_a.SelectedValue), 
        //new SqlParameter("Tags",),
        new SqlParameter("Price",txtPrice_a.Text),
        new SqlParameter("Month",ddlMonth_a.SelectedItem.Text),
        //new SqlParameter("",),
        new SqlParameter("Included_1",txtIncluded1_a.Text),
        new SqlParameter("Included_2",txtIncluded2_a.Text),
        new SqlParameter("Included_3",txtIncluded3_a.Text),
        new SqlParameter("Included_4",txtIncluded4_a.Text),
        new SqlParameter("Included_5",txtIncluded5_a.Text),
        new SqlParameter("Included_6",txtIncluded6_a.Text),
        new SqlParameter("Included_7",txtIncluded7_a.Text),
        new SqlParameter("Included_8",txtIncluded8_a.Text),
        new SqlParameter("Included_9",txtIncluded9_a.Text),
        new SqlParameter("Included_10",txtIncluded10_a.Text),
        new SqlParameter("Tour_Activities_1",txtTouractivity1_a.Text),
        new SqlParameter("Tour_Activities_2",txtTouractivity2_a.Text),
        new SqlParameter("Tour_Activities_3",txtTouractivity3_a.Text),
        new SqlParameter("Tour_Activities_4",txtTouractivity4_a.Text),
        new SqlParameter("Tour_Activities_5",txtTouractivity5_a.Text),
        new SqlParameter("Tour_Activities_6",txtTouractivity6_a.Text),
        new SqlParameter("Tour_Activities_7",txtTouractivity7_a.Text),
        new SqlParameter("Tour_Activities_8",txtTouractivity8_a.Text),
        new SqlParameter("Tour_Activities_9",txtTouractivity9_a.Text),
        new SqlParameter("Tour_Activities_10",txtTouractivity10_a.Text),
        new SqlParameter("Duration_day",txtDurationDays_a.Text),
        new SqlParameter("Duration_night",txtDurationNights_a.Text),
        new SqlParameter("Feature_image",savePath + fuFeatureimg_a.FileName.ToString()),
        new SqlParameter("Gallery_images_1",savePath + fuGalleryimg1_a.FileName.ToString()),
        new SqlParameter("Gallery_images_2",savePath + fuGalleryimg2_a.FileName.ToString()),
        new SqlParameter("Gallery_images_3",savePath + fuGalleryimg3_a.FileName.ToString()),
        new SqlParameter("Gallery_images_4",savePath + fuGalleryimg4_a.FileName.ToString()),
        new SqlParameter("Gallery_images_5",savePath + fuGalleryimg5_a.FileName.ToString()),
        new SqlParameter("Hotel",txtHotel_a.Text),
        new SqlParameter("Tour_plan_1",txtPlan1_a.Text),
        new SqlParameter("Tour_plan_2",txtPlan2_a.Text),
        new SqlParameter("Tour_plan_3",txtPlan3_a.Text),
        new SqlParameter("Tour_plan_4",txtPlan4_a.Text),
        new SqlParameter("Tour_plan_5",txtPlan5_a.Text),
        new SqlParameter("Tour_plan_6",txtPlan6_a.Text),
        new SqlParameter("Tour_plan_7",txtPlan7_a.Text),
        new SqlParameter("Tour_plan_8",txtPlan8_a.Text),
        new SqlParameter("Tour_plan_9",txtPlan9_a.Text),
        new SqlParameter("Tour_plan_10",txtPlan10_a.Text),
        new SqlParameter("Tour_Date", datDate_a.Value.ToString())
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

        dac.ExecuteNonQuery("Update_tour_by_Id", param);
        SaveFile();
    }


    public void Get_Tour_by_id(string id)
     {
        string savePath = "Uploadedfiles\\";
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("Id", id) };
        DataTable dt = dac.GetDataTable("Select_event_by_id", param);
        txtTitle_a.Text = (String)dt.Rows[0][1];
        ddlDestination_a.SelectedIndex = Convert.ToInt32(dt.Rows[0][2]);
        txtDescription_a.Text = (String)dt.Rows[0][3];
        txtMinimumage_a.Text = dt.Rows[0][4].ToString();
        txtDeparturelocation_a.Text = dt.Rows[0][5].ToString();
        txtReturnlocation_a.Text = dt.Rows[0][6].ToString();
        txtDEparturetime_a.Value = dt.Rows[0][7].ToString();
        datDate_a.Value = dt.Rows[0][69].ToString();
        txtAddress_a.Text = dt.Rows[0][8].ToString();
        txtLocationContent_a.Text = dt.Rows[0][9].ToString();
        ddlType_a.SelectedIndex = Convert.ToInt32(dt.Rows[0][11]);
        txtPrice_a.Text = dt.Rows[0][13].ToString();
        ddlMonth_a.SelectedItem.Text = dt.Rows[0][14].ToString();
        txtIncluded1_a.Text = dt.Rows[0][15].ToString();
        txtIncluded2_a.Text = dt.Rows[0][16].ToString();
        txtIncluded3_a.Text = dt.Rows[0][17].ToString();
        txtIncluded4_a.Text = dt.Rows[0][18].ToString();
        txtIncluded5_a.Text = dt.Rows[0][19].ToString();
        txtIncluded6_a.Text = dt.Rows[0][20].ToString();
        txtIncluded7_a.Text = dt.Rows[0][21].ToString();
        txtIncluded8_a.Text = dt.Rows[0][22].ToString();
        txtIncluded9_a.Text = dt.Rows[0][23].ToString();
        txtIncluded10_a.Text = dt.Rows[0][24].ToString();
        txtTouractivity1_a.Text = dt.Rows[0][25].ToString();
        txtTouractivity2_a.Text = dt.Rows[0][26].ToString();
        txtTouractivity3_a.Text = dt.Rows[0][27].ToString();
        txtTouractivity4_a.Text = dt.Rows[0][28].ToString();
        txtTouractivity5_a.Text = dt.Rows[0][29].ToString();
        txtTouractivity6_a.Text = dt.Rows[0][30].ToString();
        txtTouractivity7_a.Text = dt.Rows[0][31].ToString();
        txtTouractivity8_a.Text = dt.Rows[0][32].ToString();
        txtTouractivity9_a.Text = dt.Rows[0][33].ToString();
        txtTouractivity10_a.Text = dt.Rows[0][34].ToString();
        txtDurationDays_a.Text = dt.Rows[0][35].ToString();
        txtDurationNights_a.Text = dt.Rows[0][36].ToString();
        //fuFeatureimg.PostedFile.FileName = dt.Rows[0][44].ToString();
        //fuGalleryimg1
        //fuGalleryimg1
        //fuGalleryimg1
        //fuGalleryimg1
        //fuGalleryimg1
        txtHotel_a.Text = dt.Rows[0][48].ToString();
        txtPlan1_a.Text = dt.Rows[0][49].ToString();
        txtPlan2_a.Text = dt.Rows[0][50].ToString();
        txtPlan3_a.Text = dt.Rows[0][51].ToString();
        txtPlan4_a.Text = dt.Rows[0][52].ToString();
        txtPlan5_a.Text = dt.Rows[0][53].ToString();
        txtPlan6_a.Text = dt.Rows[0][54].ToString();
        txtPlan7_a.Text = dt.Rows[0][55].ToString();
        txtPlan8_a.Text = dt.Rows[0][56].ToString();
        txtPlan9_a.Text = dt.Rows[0][57].ToString();
        txtPlan10_a.Text = dt.Rows[0][58].ToString();
      
    }

    public void SaveFile()
    {
        // Specify the path to save the uploaded file to.
        string savePath = "E:\\Nature serfer\\ns\\Uploadedfiles\\";

        // Get the name of the file to upload.
        string fileName = fuFeatureimg_a.FileName;
        string gal1 = fuGalleryimg1_a.FileName;
        string gal2 = fuGalleryimg2_a.FileName;
        string gal3 = fuGalleryimg3_a.FileName;
        string gal4 = fuGalleryimg4_a.FileName;
        string gal5 = fuGalleryimg5_a.FileName;

        // Create the path and file name to check for duplicates.
        if (fuFeatureimg_a.HasFile)
        {

            fuFeatureimg_a.SaveAs(savePath + fileName);
        }
        if (fuGalleryimg1_a.HasFile)
        {

            fuFeatureimg_a.SaveAs(savePath + gal1);
        }
        if (fuGalleryimg2_a.HasFile)
        {

            fuFeatureimg_a.SaveAs(savePath + gal2);
        }
        if (fuGalleryimg3_a.HasFile)
        {

            fuFeatureimg_a.SaveAs(savePath + gal3);
        }
        if (fuGalleryimg4_a.HasFile)
        {

            fuFeatureimg_a.SaveAs(savePath + gal4);
        }
        if (fuGalleryimg5_a.HasFile)
        {

            fuFeatureimg_a.SaveAs(savePath + gal5);
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