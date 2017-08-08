using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_comfirm : System.Web.UI.Page
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int u_id=Convert.ToInt32(Request.QueryString["type"]);

        SqlParameter[] param = new SqlParameter[] {new SqlParameter("Id",u_id),new SqlParameter("O_Password",txtPassword.Text) };

        dac.ExecuteNonQuery("Addoperatorpasswor", param);
    }
}