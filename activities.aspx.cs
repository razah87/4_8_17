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
public partial class activities : System.Web.UI.Page
{
    private IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    int cat_id=0;
    int op_id=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //string des_id = Session["des_id"].ToString();
        //GetDestinationbyid(Convert.ToInt32(des_id));

        SearchCustomers(txtContactsSearch2.Text);
        rptTours.DataSource = Getalltours();
        rptTours.DataBind();
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

    public DataTable GetToursbydestandmonth(string des, string mon)
    {
        SqlParameter[] param = new SqlParameter[] 
        {
          new SqlParameter("Destination_Id",des),
          new SqlParameter("Month",mon)
        };
        DataTable dt = dac.GetDataTable("Get_tours_by_destin_and_month", param);
        return dt;
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

    public DataTable GetCategories()
    {

        DataTable dt = dac.GetDataTable("Select_Categories");
        return dt;

    }

    protected void rblPrice_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblPrice.SelectedValue == "10000 to 30000")
        {
            int min_p = 10000;
            int max_p = 30000;
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
            DataTable dt = dac.GetDataTable("Get_tour_by_price", param);
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

    [System.Web.Script.Services.ScriptMethod()]
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
    public void GetDestinationbyid(int d_id)
    {
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("Id",d_id) };
        IDataReader idr = dac.ExecuteDataReader("GetDestinationbyid",param);
       
        if (idr.Read())
        {
            banheader.Style.Add("background-image", "url(../"+idr["Profile_Image"].ToString()+")");
            lbldTitle.Text = idr["ds_Name"].ToString();
            lblContent.InnerText = idr["ds_Content"].ToString();

        }
        dac.Connection.Close();
    
    }

    protected void rptTours_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        
        Session["tour_id"] = e.CommandArgument;
        SqlParameter[] param = new SqlParameter[] 
        {
        
         new SqlParameter("Id", Session["tour_id"])
        };

        DataTable dt = dac.GetDataTable("Select_event_by_id", param);
        cat_id =    Convert.ToInt32(dt.Rows[0]["Category_id"]);
        op_id  = Convert.ToInt32(dt.Rows[0]["o_id"]);

        dac.Connection.Close();
        Response.Redirect("tour.aspx?id=" + Session["tour_id"] + "&cat_id=" + cat_id + "&op_id=" + op_id);

    }

    public DataTable Gettoursbydestination(string destination)
    {

        SqlParameter[] param = new SqlParameter[] 
        {
        
         new SqlParameter("Destination_Id", destination)
        };

        DataTable dt = dac.GetDataTable("Get_Data_by_destination", param);
        dac.Connection.Close();
        return dt;

    }

    public DataTable Getalltours()
    {
        DataTable dt = dac.GetDataTable("Get_alltours");
        return dt;

    }
}