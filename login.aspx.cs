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

public partial class login : System.Web.UI.Page
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {
        //HyperLink hllog = (HyperLink)this.Master.FindControl("hlLogin");
        //Button hllogout = (Button)this.Master.FindControl("btnLogout");
        //HyperLink hlrg = (HyperLink)this.Master.FindControl("hlRegister");
        //HyperLink hlmc = (HyperLink)this.Master.FindControl("hlMyaccount");
        //hllog.Visible = false;
        //hllogout.Visible = true;
        //hlmc.Visible = true;
        //hlrg.Visible = false;
        
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        MasterPage master = new MasterPage();



        SqlParameter[] param = new SqlParameter[] { new SqlParameter("O_Email", txtNamelogin.Text), new SqlParameter("O_Password", txtPassword.Text) };
        IDataReader idr = dac.ExecuteDataReader("Validateuser", param);
        if (idr.Read())
        {
           
            Session["userid"] = idr["Id"];
            Session["role"] = idr["User_role"].ToString();

            HyperLink hllog = (HyperLink)this.Master.FindControl("hlLogin");
            Button hllogout = (Button)this.Master.FindControl("btnLogout");
            HyperLink hlrg = (HyperLink)this.Master.FindControl("hlRegister");
            HyperLink hlmc = (HyperLink)this.Master.FindControl("hlMyaccount");
            hllog.Visible = false;
            hllogout.Visible = true;
            hlmc.Visible = true;
            hlrg.Visible = false;

            Response.Redirect("operator-profile.aspx");
        }
        else { lblMessage.Visible = true; lblMessage.Text = "Password or email invalid"; }

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (txtRPassword.Text == txtRCPassword.Text)
        {
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("O_Email", txtUserEmail.Text) };
            IDataReader idr = dac.ExecuteDataReader("Validatenewuser", param);
           
            if (!idr.Read())
            {
                
                Validatenewuser();

            }
            else
            { lblMessage.Text = "User already exist"; }
        }
        else
        { lblMessage.Text = "Confarm password"; }
    }

        public void Validatenewuser()
    {
        //dac.Connection.Close();
        //SqlParameter[] param = new SqlParameter[] { new SqlParameter("Id", txtUsername.Text), new SqlParameter("O_Name", txtUsername.Text), new SqlParameter("O_Email", txtUserEmail.Text), new SqlParameter("O_Password", txtRPassword.Text) };
        //   Session["userid"]= dac.ExecuteNonQuery("InsertUsers", param);
            
        //    Response.Redirect("operator-profile.aspx");

            String strConnString = ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertUsers";
            cmd.Parameters.Add("@O_Name", SqlDbType.VarChar).Value = txtUsername.Text.Trim();
            cmd.Parameters.Add("@O_Email", SqlDbType.VarChar).Value = txtUserEmail.Text.Trim();
            cmd.Parameters.Add("@O_Password", SqlDbType.VarChar).Value = txtRPassword.Text.Trim();
            
            cmd.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteScalar();
                Session["userid"] = cmd.Parameters["@Id"].Value.ToString();
               // lblMessage.Text = "Record inserted successfully. ID = " + id;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
                Response.Redirect("operator-profile.aspx");
            }
        }
}