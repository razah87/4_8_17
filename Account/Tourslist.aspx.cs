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

public partial class Account_Tourslist : System.Web.UI.Page
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        //ad_rptTours.DataSource = Getalltours();
        //ad_rptTours.DataBind();

        Gridview1.DataSource = Getalltours();
        Gridview1.DataBind();
    }

    public DataTable Getalltours()
    {
        DataTable dt = dac.GetDataTable("Get_tuors_list");
        return dt;

    }

    protected void btnAddTour_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Account/AddTour.aspx");
    }

    //protected void btnUpdate_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("http://localhost:49915/Account/AddTour.aspx");
    //}

    protected void Gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridView gv1 = (GridView)sender;
        GridViewRow gvr1 = (GridViewRow)gv1.Rows[e.RowIndex];
        HiddenField hf1 = (HiddenField)gvr1.FindControl("Hf_ID");
        string t_id = hf1.Value;
        Session["tour_id"] = t_id;
        Response.Redirect("../Account/Updatetour.aspx");
    }
    protected void   Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridView gv1 = (GridView)sender;
        GridViewRow gvr1 = (GridViewRow)gv1.Rows[e.RowIndex];
        HiddenField hf1 = (HiddenField)gvr1.FindControl("Hf_ID");
        string t_id = hf1.Value;
        
        DeleteTourbyid(t_id);
        Getalltours();
    }

    public bool DeleteTourbyid(string id)
    {
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("Id", id) };
        return dac.ExecuteNonQuery("Delete_Tour_byId", param) > 0 ? true : false;
    }

   
}