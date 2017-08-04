using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Searchresult : System.Web.UI.Page
{
    private IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        string dest = Session["destination_id"].ToString();
        string tp = Session["type"].ToString();
        string dad = Session["mon"].ToString();
        string dur = Session["duration"].ToString();
        SearchCustomers(txtContactsSearch2.Text);
        ddlMonth.SelectedItem.Text = dad;
        //txtContactsSearch2.Text = dest;
        //Repeater1.DataSource= GetCategories();
        //Repeater1.DataBind();
        if (!IsPostBack)
        {
            rblCategories.DataSource = GetCategories();
            rblCategories.DataTextField = "cat_Title";
            rblCategories.DataValueField = "cat_Id";
            rblCategories.DataBind();

           
        }
       
        if (dest != "" & tp != "1" & dad != "Month of Travel" & dur != "1")
        {

            rptTours.DataSource = GetSearchTours(dest, tp, dad, dur);
            rptTours.DataBind();

            if (rptTours.Items.Count < 1)
            {
                lblmessage.Visible = true;
                lblmessage.InnerText = "There is no data";
            }
        }

        else if (dest != "" & tp == "1" & dad == "Month of Travel" & dur == "1")
        {

            rptTours.DataSource = GetSearchTours(dest, tp, dad, dur);
            rptTours.DataBind();

            if (rptTours.Items.Count < 1)
            {
                lblmessage.Visible = true;
            }
        }

        else if (dest == "" & tp != "1" & dad == "Month of Travel" & dur == "1")
        {

            rptTours.DataSource = GetToursbycategory(tp);
            rptTours.DataBind();

            if (rptTours.Items.Count < 1)
            {
                lblmessage.Visible = true;
            }
        }

        else if (dest == "" & tp == "1" & dad != "Month of Travel" & dur == "1")
        {

            rptTours.DataSource = Gettoursbymonth(dad);
            rptTours.DataBind();

            if (rptTours.Items.Count < 1)
            {
                lblmessage.Visible = true;
            }
        }

        else if (dest == "" & tp == "1" & dad == "Month of Travel" & dur != "1")
        {

            rptTours.DataSource = Gettoursbydays(dur);
            rptTours.DataBind();

            if (rptTours.Items.Count < 1)
            {
                lblmessage.Visible = true;
            }
        }
        else if (dest == "" & tp == "1" & dad == "Month of Travel" & dur == "1")
        {

            rptTours.DataSource = Getalltours();
            rptTours.DataBind();
        }
        else 
        {
            lblmessage.Visible = true;
           lblmessage.InnerText = "There is no data";

           //rptTours.DataSource = Getalltours();
           //rptTours.DataBind();
        }
        //GridView1.DataSource = GetSearchTours("1", "4", "February", "2"); 
        //GridView1.DataBind();
        // GetSearchTours();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

        Get_destinationkeybyname(txtContactsSearch2.Text.Trim());

       
        Session["mon"] = ddlMonth.SelectedItem.Value;

        string des = Session["destination_id"].ToString();
        string da = "";
        if (ddlMonth.SelectedItem.ToString() != "Month of Travel")
        {
            da = ddlMonth.SelectedItem.ToString();

            rptTours.DataSource = GetToursbydestandmonth(des, da); 
           
            rptTours.DataBind();

        }
       

        //var queryParams = new NameValueCollection()
        //{
           
        //    { "des", des.Trim() },
        //    { "Month", da.Trim() }
        //};

        //string url = "http://localhost:49915/Searchresult.aspx" + ToQueryString(queryParams);

        //Response.Redirect(url);
    }
    public DataTable GetToursbydestandmonth(string des,string mon)
    {
        SqlParameter[] param = new SqlParameter[] 
        {
          new SqlParameter("Destination_Id",des),
          new SqlParameter("Month",mon)
        };
        DataTable dt=dac.GetDataTable("Get_tours_by_destin_and_month",param);
        return dt;
    }
    public DataTable GetSearchTours(string destination, string ty, string mon, string da)
    {
        
       
            SqlParameter[] param = new SqlParameter[] 
        {
         new SqlParameter("Destination_Id",destination),
         new SqlParameter("Category_id",ty),
         new SqlParameter("Month",mon),
         new SqlParameter("Duration_day",da)
        };

        DataTable dt = dac.GetDataTable("Get_Data_by_selected_param", param);
        return dt;
        
   }

    public DataTable GetToursbycategory(string cat){
            SqlParameter[] param = new SqlParameter[] 
        {
        
         new SqlParameter("Category_id",cat)
        };

        DataTable dt = dac.GetDataTable("Get_Data_by_selected_cat", param);
        return dt;
}

    public DataTable Gettoursbymonth(string mon)
    {      
            SqlParameter[] param = new SqlParameter[] 
        {
        
         new SqlParameter("Month",mon)
        };

            DataTable dt = dac.GetDataTable("Get_Data_by_month", param);
       return dt;

    }
    public DataTable Gettoursbydestination(string destination){

    SqlParameter[] param = new SqlParameter[] 
        {
        
         new SqlParameter("Duration_day", destination)
        };

       DataTable dt = dac.GetDataTable("Get_Data_by_destination", param);      
       return dt;
}

    public DataTable Gettoursbydays(string num_day)
    {

        SqlParameter[] param = new SqlParameter[] 
        {
        
         new SqlParameter("Duration_day", num_day)
        };
        DataTable dt = dac.GetDataTable("Get_Data_by_num_days", param);
        return dt;
    }

    public DataTable Getalltours()
    {
        DataTable dt = dac.GetDataTable("Get_alltours");
        return dt;
            
    }

    public DataTable GetCategories()
    {

        DataTable dt = dac.GetDataTable("Select_Categories");
        return dt;

    }

    protected void rblPrice_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(rblPrice.SelectedValue=="10000 to 30000")
        {
            int min_p=10000;
            int max_p=30000;
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("minprice", min_p), new SqlParameter("maxprice", max_p) };
            DataTable dt = dac.GetDataTable("Get_tour_by_price", param);
            rptTours.DataSource = dt;
            rptTours.DataBind();
        }
        else if (rblPrice.SelectedValue == "31000 to 60000")
        {
            int min_p = 31000;
            int max_p = 60000;
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("minprice", min_p), new SqlParameter("maxprice", max_p) };
            DataTable dt = dac.GetDataTable("Get_tour_by_price", param);
            rptTours.DataSource = dt;
            rptTours.DataBind();
        }
        else if (rblPrice.SelectedValue == "61000 to 100000")
        {
            int min_p = 61000;
            int max_p = 100000;
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("minprice", min_p), new SqlParameter("maxprice", max_p) };
            DataTable dt = dac.GetDataTable("Get_tour_by_price",param);
            rptTours.DataSource = dt;
            rptTours.DataBind();
        }
    }


    protected void rblRating_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblRating.SelectedValue == "5 Stars")
        {
            int star = 5;
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("Rating", star) };
            DataTable dt = dac.GetDataTable("Get_tour_by_rating", param);
            rptTours.DataSource = dt;
            rptTours.DataBind();
        }
        else if (rblRating.SelectedValue == "4 Stars")
        {
            int star = 4;
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("Rating", star) };
            DataTable dt = dac.GetDataTable("Get_tour_by_rating", param);
            rptTours.DataSource = dt;
            rptTours.DataBind();
        }
        else if (rblRating.SelectedValue == "3 Stars")
        {
            int star = 3;
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("Rating", star) };
            DataTable dt = dac.GetDataTable("Get_tour_by_rating", param);
            rptTours.DataSource = dt;
            rptTours.DataBind();
        }
        else if (rblRating.SelectedValue == "2 Stars")
        {
            int star = 2;
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("Rating", star) };
            DataTable dt = dac.GetDataTable("Get_tour_by_rating", param);
            rptTours.DataSource = dt;
            rptTours.DataBind();
        }

        else if (rblRating.SelectedValue == "1 Star")
        {
            int star = 1;
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("Rating", star) };
            DataTable dt = dac.GetDataTable("Get_tour_by_rating", param);
            rptTours.DataSource = dt;
            rptTours.DataBind();
        }
    }
    protected void rblCategories_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("Category_id", rblCategories.SelectedValue) };
        DataTable dt = dac.GetDataTable("Get_tours_by_cat", param);
        rptTours.DataSource = dt;
        rptTours.DataBind();
    }

    public string Get_destinationkeybyname(string dest)
    {
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("ds_Name", dest) };
        IDataReader idr = dac.ExecuteDataReader("Get_destination_id", param);
        string desid = "";
        if (idr.Read())
        {
            desid = idr[0].ToString();
        }
        dac.Connection.Close();
        Session["destination_id"] = desid;
        return desid;

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

    public DataTable GetDestination()
    {

        DataTable dt = dac.GetDataTable("Select_Destination");
        return dt;

    }

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
    protected void rptTours_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Session["tour_id"] = e.CommandArgument;
        Response.Redirect("~/tour.aspx");
    }
}