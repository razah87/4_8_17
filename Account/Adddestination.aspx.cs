using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Adddestination : System.Web.UI.Page
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddDestination_Click(object sender, EventArgs e)
    {
          string savePath = "D:\\InetPub\\vhosts\\naturesurfers.com\\httpdocs\\Uploadedfiles\\Destination\\";
        SqlParameter[] param = new SqlParameter[] 
        {
          new SqlParameter("ds_Name", txtDesTitle.Text),
          new SqlParameter("ds_Content",txtDesDescription.Text),
          new SqlParameter("Profile_Image", savePath+uplfDesprofile.FileName.ToString())
        };

        dac.ExecuteNonQuery("Add_destination", param);

        uplfDesprofile.SaveAs(savePath+uplfDesprofile.FileName.ToString());
    }

    
}