using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class getnewpassword : System.Web.UI.Page
{
    private IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void brnGetnewpwd_Click(object sender, EventArgs e)
    {
        if (rbtnchoice.Text == "0")
        {
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("u_Email", txtEmail.Text), new SqlParameter("u_Password", txtNewpassword.Text) };
            dac.ExecuteNonQuery("Updatepass", param);
            lblMessage.Text = "Your password have updated";
        }
        else if (rbtnchoice.Text == "1")
        {
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("O_Email", txtEmail.Text), new SqlParameter("O_Password", txtNewpassword.Text) };
            dac.ExecuteNonQuery("Updateuserpass", param);
            lblMessage.Text = "Your password have updated";
        }
        else { lblMessage.Text = "Your email address is invalid"; }

        
    }
}