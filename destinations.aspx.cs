using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class destinations : System.Web.UI.Page
{
    private IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            rptDestination.DataSource = GetDestinations();
            rptDestination.DataBind();
        }
    }

    public DataTable GetDestinations1()
    {
        DataTable dt = dac.GetDataTable("GetAllDestination");
       return dt;
    }

    public DataTable GetDestinations()
    {
        DataTable dt = dac.GetDataTable("GetAllDestination");
        return dt;
        
    }
    protected void rptDestination_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Session["des_id"] = e.CommandArgument;
        Response.Redirect("http://localhost:49915/destination.aspx");
    }
}