using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;

public partial class Usercontrol_WebUserControl : System.Web.UI.UserControl
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnLogin_Click(object sender, EventArgs e)
        
    {
        MasterPage master = new MasterPage();
        string us = txtUsername.Text;
        HyperLink divControl = master.FindControl("hlRegister") as HyperLink;

        SqlParameter[] param = new SqlParameter[] { new SqlParameter("u_Email", us) };
        IDataReader idr = dac.ExecuteDataReader("Validateuser", param);
        if (idr.Read())
        {
            

            Label divControl1 = master.FindControl("DivWrapper") as Label;

            Response.Redirect("operator-profile.aspx");
        }
        else { lblMessage.Text = "Password or email invalid"; }

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

    }
}