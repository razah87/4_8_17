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

public partial class tour : System.Web.UI.Page
{
    private IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        string tour_id = Session["tour_id"].ToString();
        Gettourbyid(tour_id);

        rptTour.DataSource=   GetPlanbytourid(tour_id);
        rptTour.DataBind();

        string op = Session["operator_id"].ToString();
        string ct = Session["Cat_id"].ToString();
        GetOperator(op);
       rptRTours.DataSource= Getrelativetour(ct, op);
       rptRTours.DataBind();
    }

    public void Gettourbyid(string t_id)
    {
        
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("Id", t_id) };
        IDataReader idr = dac.ExecuteDataReader("Select_event_by_id", param);
        if(idr.Read())
        {
            lbltitle.Text = idr["Title"].ToString();
            lblDescription.Text = idr["Location_Content"].ToString();
            imgTop.ImageUrl = idr["Feature_image"].ToString();
            lblIncludes1.Text = idr["Included_1"].ToString();
            lblIncludes2.Text = idr["Included_2"].ToString();
            lblIncludes3.Text = idr["Included_3"].ToString();
            lblIncludes4.Text = idr["Included_4"].ToString();
            lblIncludes5.Text = idr["Included_5"].ToString();
            lblNotIn1.Text = idr["Not_Included_1"].ToString();
            lblNotIn2.Text = idr["Not_Included_2"].ToString();
            lblNotIn3.Text = idr["Not_Included_3"].ToString();
            lblNotIn4.Text = idr["Not_Included_4"].ToString();
            lblNotIn5.Text = idr["Not_Included_5"].ToString();
            lblTourPrice.Text = idr["Price"].ToString();
            lblDayinnumber.Text = idr["Duration_day"].ToString();
            lblTourDays.Text = idr["Duration_day"].ToString();
            lblTripamount.Text = idr["Price"].ToString();
            lblDeparture_left_date.Text = idr["Tour_Date"].ToString();
            lblDeparturedate_sidebar.Text = idr["Tour_Date"].ToString();
            Session["operator_id"] = idr["o_id"];
            Session["Cat_id"] = idr["Category_id"];
        }
        dac.Connection.Close();
        
    }

       public DataTable GetPlanbytourid(string t_id)
    {
        SqlParameter[] param = new SqlParameter[] {new SqlParameter("tr_Id",t_id) };
        DataTable dt = dac.GetDataTable("GetPlans", param);
        dac.Connection.Close();
        return dt;
          
    }

       public DataTable Getrelativetour(string cid, string oid) {
           SqlParameter[] param = new SqlParameter[] { new SqlParameter("Category_id", cid), new SqlParameter("o_id", oid) };
           DataTable dt = dac.GetDataTable("Getrelatedtours", param);
           return dt;
           //IDataReader idr = dac.ExecuteDataReader("Getrelatedtours", param);
           //if (idr.Read())
           //{
           //    for (int i = 0; i < 3; i++)
           //    {
                   
           //    }
           //}
       }
       public void GetOperator(string oid)
       {
           SqlParameter[] param = new SqlParameter[] { new SqlParameter("Id", oid) };
           IDataReader idr = dac.ExecuteDataReader("Getoperator", param);
           if(idr.Read())
           {
               imgOperatorsid.ImageUrl = idr["O_Profileimage"].ToString();
               lblOperatorname.Text = idr["O_Name"].ToString();
           }
           dac.Connection.Close();
          
       }


}