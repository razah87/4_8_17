using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class verification : System.Web.UI.Page
{
    private IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = Request.QueryString["id"];

        SqlParameter[] param = new SqlParameter[] { new SqlParameter("u_Id", userid) };
        dac.ExecuteNonQuery("Update_user_status", param);

    }



}