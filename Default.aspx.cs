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
using System.Web.Services;
using System.Collections.Specialized;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
  public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)

    {
        if (!Page.IsPostBack)
        {
            //ddlDestination.DataSource = GetDestination();
            //ddlDestination.DataTextField = "ds_Name";
            //ddlDestination.DataValueField = "Id";
            //ddlDestination.DataBind();

            ddlType.DataSource = GetCategories();
            ddlType.DataTextField = "cat_Title";
            ddlType.DataValueField = "cat_Id";
            ddlType.DataBind();

            ddlDuration.DataSource = GetDuration();
            ddlDuration.DataTextField = "Duration";
            ddlDuration.DataValueField = "dur_Id";
            ddlDuration.DataBind();

            ///Getalldestination
            ///
           /* DataTable dt = GetTopDestination();

            if (dt.Rows.Count > 0) {
                DataTable dt_new = new DataTable();
                DataColumn dc_image = new DataColumn("ImageUrl");
                dt_new.Columns.Add(dc_image);
                DataColumn dc_title = new DataColumn("title");

                dt_new.Columns.Add(dc_title);
                for (int i = 0; i < dt.Rows.Count; i++) {
                  //  image_top.ImageUrl = dt.Rows[i]["Profile_Image"].ToString();

                    DataRow dr = dt_new.NewRow();
                    dr[0] = dt.Rows[i]["Profile_Image"].ToString();
                    dr[1] = dt.Rows[i]["ds_Name"].ToString();
            // you change your code as per need .
                    dt_new.Rows.Add(dr);
                
                }
                dtlist.DataSource = dt_new;
                dtlisttop.DataSource = dt_new;
                dtlist.DataBind();
                dtlisttop.DataBind();
            
            }
            */
            ////////// Get All Event ////
           // DataTable dt_event = GetAllTour();
         //   slider_return(dt_event);
            /*
            DataTable dt_event = GetAllTour();

            if (dt_event.Rows.Count > 0)
            {
                DataTable dt_new = new DataTable();
                DataColumn dc_image = new DataColumn("ImageUrl1");
                dt_new.Columns.Add(dc_image);
                DataColumn dc_title = new DataColumn("title1");

                dt_new.Columns.Add(dc_title);

                DataColumn dc_price = new DataColumn("price");

                dt_new.Columns.Add(dc_price);
                for (int i = 0; i < dt_event.Rows.Count; i++)
                {
                    //  image_top.ImageUrl = dt.Rows[i]["Profile_Image"].ToString();

                    DataRow dr = dt_new.NewRow();
                    dr[0] = dt_event.Rows[i]["Feature_image"].ToString();
                    dr[1] = dt_event.Rows[i]["Title"].ToString();
                    dr[2] = dt_event.Rows[i]["Price"].ToString();

                    dt_new.Rows.Add(dr);

                }
                slider_holyday.DataSource = dt_new;
                slider_holyday.DataBind();

            }
 */
            ////


           // Getalltours();
           
        }
        SearchCustomers(txtContactsSearch.Text);
    }
    public String top_destination() {
         DataTable dt = GetTopDestination(); 
         StringBuilder html = new StringBuilder();
         for (int i = 0; i < dt.Rows.Count; i++)
         {
             html.Append("<div class='col-sm-3-f' style='padding-bottom:10px'><div class='des-thumbnail'> <img src='");
             html.Append(dt.Rows[i]["Profile_Image"].ToString());
             html.Append("' width='100%' height='274px'  /></div><div class='img-caption'><a href='");
             html.Append("destination.aspx?id=");
             html.Append(dt.Rows[i]["Id"].ToString());
             html.Append("'><h3 class='text-center'>");
             html.Append(dt.Rows[i]["ds_Name"].ToString());
             html.Append("</h3></a></div></div>");
         }
        return html.ToString();
    }
    public String slider_return()
    {
        DataTable dt_event = GetAllTour();
        StringBuilder html = new StringBuilder();
        for (int i = 0; i < dt_event.Rows.Count; i++)
        {
            html.Append("<div  class='sld'>");
            html.Append("<a href='");
            html.Append("tour.aspx?id=" + dt_event.Rows[i]["Id"].ToString() + "&cat_id=" + dt_event.Rows[i]["Category_id"].ToString() + "&op_id=" + dt_event.Rows[i]["o_id"].ToString());
            html.Append("'><img src='");
            
            html.Append(dt_event.Rows[i]["Feature_image"].ToString());
            html.Append("' width='400px !important'/></a>");
            html.Append("<div class='event-title'>");
            html.Append("<span class='ns_title'><a href='");
            html.Append("tour.aspx?id=" + dt_event.Rows[i]["Id"].ToString() + "&cat_id=" + dt_event.Rows[i]["Category_id"].ToString() + "&op_id=" + dt_event.Rows[i]["o_id"].ToString() + "'>");
            html.Append(dt_event.Rows[i]["Title"].ToString());
            html.Append("</a></span><span class='price'>");
            html.Append("RS " + dt_event.Rows[i]["Price"].ToString());
            html.Append("</span></div></div>");
        }
        return html.ToString();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

        Get_destinationkeybyname(txtContactsSearch.Text.Trim());

        Session["type"] = ddlType.SelectedItem.Value;
        Session["mon"] = ddlMonth.SelectedItem.Value;
        Session["duration"] = ddlDuration.SelectedItem.Value;



        string des = txtContactsSearch.Text.Trim();
        string da = "";
        if (ddlMonth.SelectedItem.ToString() != "Month of Travel")
        {
            da = ddlMonth.SelectedItem.ToString();
        }
        string du = ddlDuration.SelectedItem.ToString();
        string ty = ddlType.SelectedItem.ToString();

           var queryParams = new NameValueCollection()
        {
           
            { "des", des.Trim() },
            { "Month", da.Trim() },
            { "dura", du.Trim() },
            { "type", ty.Trim() }
        };

           string url = "Searchresult.aspx" + ToQueryString(queryParams);

        Response.Redirect(url);
    }
    public string ToQueryString(NameValueCollection nvc)
    {
        StringBuilder sb = new StringBuilder("?");

        bool first = true;

        foreach (string key in nvc.AllKeys)
        {
            foreach (string value in nvc.GetValues(key))
            {
                if (!first)
                {
                    sb.Append("&");
                }

                sb.AppendFormat("{0}={1}", Uri.EscapeDataString(key), Uri.EscapeDataString(value));

                first = false;
            }
        }

        return sb.ToString();
    }
    public DataTable GetAllTour()
    {
        DataTable dt = dac.GetDataTable("Get_alltours");
        return dt;
    }
    //public List<string> Searchautocomp(string TextBox1)
    //{

    //    SqlParameter[] param = new SqlParameter[] { new SqlParameter("@ds_Name", TextBox1) };

      
    //    List<string> destinations = new List<string>();
    //    IDataReader objReader = dac.ExecuteDataReader("Select_Destination_auto", param);
        
    //        while (objReader.Read())
    //        {
    //            destinations.Add(objReader["ds_Name"].ToString());
    //        }

        
    //    for (int i = 0; i < destinations.Count; i++)
    //    {
    //        cbo.Items.Add(destinations[i].ToString());
    //    }
    //    return destinations;
    //}
    public  DataTable GetDestination()
    {

        DataTable dt = dac.GetDataTable("Select_Destination");
        return dt;
                   
    }
    public DataTable GetTopDestination()
    {

        DataTable dt = dac.GetDataTable("GetTopDestination");
        return dt;

    }

    public DataTable GetCategories()
    {

        DataTable dt = dac.GetDataTable("Select_Categories");
        return dt;

    }

    public DataTable GetDuration()
    {

        DataTable dt = dac.GetDataTable("Selectallduration");
        return dt;

    }

    //public DataTable GetDestination()
    //{

    //    DataTable dt = dac.GetDataTable("Select_Destination");
    //    return dt;

    //}

    //[System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers(string prefixText)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager
                    .ConnectionStrings["DataConnectionString"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select ds_Name from ns_Destinations where " +
                "ds_Name like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> customers = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["ds_Name"].ToString());
                    }
                }
                conn.Close();
                return customers;
            }
        }
    }

    public string Get_destinationkeybyname(string dest)
    {
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("ds_Name", dest) };
        IDataReader idr = dac.ExecuteDataReader("Get_destination_id",param);
       string desid="";
        if (idr.Read())
        {
            desid = idr[0].ToString();
        }

        Session["destination_id"] = desid;
        return desid;
     
    }

    public DataTable GetToursbycategory(string cat)
    {
        SqlParameter[] param = new SqlParameter[] 
        {
        
         new SqlParameter("Category_id",cat)
        };

        DataTable dt = dac.GetDataTable("Get_Data_by_selected_cat", param);
        return dt;
    }

    public void Getalltours()
    {
        //DataTable dt = dac.GetDataTable("Get_alltours");
        
        //if (dt.Rows.Count > 0)
        //{
        //    foreach (DataRow dr in dt.Rows)
        //    {

        //        imgSlider.ImageUrl =dr["Feature_image"].ToString();
        //        lblTourtitle.Text = dr["Title"].ToString();
        //        lblTourprice.Text = dr["Price"].ToString();

        //    }

           

        //IDataReader idr = dac.ExecuteDataReader("Get_alltours");
        //if (idr.Read())
        //{

        //    for (int i = 1; i <= 4; i++)
        //     {
        //                                                               if (idr["Feature_image"].ToString() != "")
        //        {
        //            imgSlider.ImageUrl = idr["Feature_image"].ToString();
        //            lblTourprice.Text = idr["Title"].ToString();
        //            lblTourprice.Text = idr["Price"].ToString();
        //        }
        //    }
       // return dt;
       // }
        }

    

   
}