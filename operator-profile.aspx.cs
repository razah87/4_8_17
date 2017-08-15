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

public partial class operator_profile : System.Web.UI.Page
{

    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink hllog = (HyperLink)this.Master.FindControl("hlLogin");
        Button hllogout = (Button)this.Master.FindControl("btnLogout");
        HyperLink hlrg = (HyperLink)this.Master.FindControl("hlRegister");
        HyperLink hlmc = (HyperLink)this.Master.FindControl("hlMyaccount");
        hllog.Visible = false;
        hllogout.Visible = true;
        hlmc.Visible = true;
        hlrg.Visible = false;
       // if (Session["role"].ToString() != "subscribers") { trallerreviews.Visible = true; }
        string u = Session["userid"].ToString();
        GetOperator(u);
    }

    public void GetOperator(string o_id)

    {
        SqlParameter[] param = new SqlParameter[] {new SqlParameter("Id",o_id) };
        IDataReader idr=dac.ExecuteDataReader("Select_Operator_by_id",param);
        if(idr.Read())
        {
            
            lblOName.Text = idr["O_Name"].ToString();
            lblOTitle.Text = idr["O_Com_Description"].ToString();
            lblOContent.Text = idr["O_Com_Content"].ToString();
            imgCoverimage.ImageUrl = idr["O_Com_Coverimage"].ToString();
            imgOperator.ImageUrl = idr["O_Profileimage"].ToString();


        }

    }
}