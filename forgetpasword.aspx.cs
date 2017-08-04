using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgetpasword : System.Web.UI.Page
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnFG_Click(object sender, EventArgs e)
    {
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("u_Email",txtFGEmail.Text), new SqlParameter("u_Password", txtNewpwd.Text) };
        dac.ExecuteNonQuery("Updateuserpass", param);
        Response.Redirect("login.aspx");
    }
}