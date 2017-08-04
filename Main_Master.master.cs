using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        hlLogin.Visible = true;
        btnLogout.Visible = false;
        hlMyaccount.Visible = false;
        hlRegister.Visible = true;
        Response.Redirect("~/Default.aspx");
    }
}
