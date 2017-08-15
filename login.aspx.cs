using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
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
        SqlParameter[] param = new SqlParameter[] { new SqlParameter("u_Email", txtNamelogin.Text), new SqlParameter("u_Password", txtPassword.Text) };
        SqlParameter[] param1 = new SqlParameter[] { new SqlParameter("O_Email", txtNamelogin.Text), new SqlParameter("O_Password", txtPassword.Text) };
        DataTable dt = dac.GetDataTable("Validatecustuser", param);
        dac.Connection.Close();
        DataTable O_dt = dac.GetDataTable("Validate_operator", param1);
        

        if (dt.Rows.Count > 0)
        {

            Session["userid"] = dt.Rows[0]["u_Id"];
            //     Session["role"] = idr["User_role"].ToString();

            HyperLink hllog = (HyperLink)this.Master.FindControl("hlLogin");
            Button hllogout = (Button)this.Master.FindControl("btnLogout");
            HyperLink hlrg = (HyperLink)this.Master.FindControl("hlRegister");
            HyperLink hlmc = (HyperLink)this.Master.FindControl("hlMyaccount");
            hllog.Visible = false;
            hllogout.Visible = true;
            hlmc.Visible = true;
            hlrg.Visible = false;
        
            if (Convert.ToInt32(Session["flag"]) != 1)
            {

                Response.Redirect("userprofile.aspx");
            }
            else
            {
                Session["flag"] = 0;
                Response.Redirect("Booking.aspx");
            }
        }
        else if (O_dt.Rows.Count > 0)
        {
            Session["userid"] = O_dt.Rows[0]["Id"];

            HyperLink hllog = (HyperLink)this.Master.FindControl("hlLogin");
            Button hllogout = (Button)this.Master.FindControl("btnLogout");
            HyperLink hlrg = (HyperLink)this.Master.FindControl("hlRegister");
            HyperLink hlmc = (HyperLink)this.Master.FindControl("hlMyaccount");
            hllog.Visible = false;
            hllogout.Visible = true;
            hlmc.Visible = true;
            hlrg.Visible = false;
        }
        
        
        else{ lblMessage.Visible = true; lblMessage.Text = "Password or email invalid"; }

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (txtRPassword.Text == txtRCPassword.Text)
        {
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("u_Email", txtUserEmail.Text) };
            IDataReader idr = dac.ExecuteDataReader("Validatecustuserlogin", param);
            if (!idr.Read())
            {
                Validatenewuser();

            }
            else
            { lblMessage.Visible = true; lblMessage.Text = "User already exist"; }
        }
        else
        { lblMessage.Visible = true; lblMessage.Text = "Confarm password"; }
    }

    public void Validatenewuser()
    {

        String strConnString = ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "InsertCustomerUsers";
        cmd.Parameters.Add("@Title", txtUsername.Text.Trim());
        cmd.Parameters.Add("@u_Email", txtUserEmail.Text.Trim());
        cmd.Parameters.Add("@u_Password", txtRPassword.Text.Trim());
        cmd.Parameters.Add("@Created_date", Convert.ToDateTime(DateTime.Now));//txtRPassword.Text.Trim();

        cmd.Parameters.Add("@u_Id", SqlDbType.Int).Direction = ParameterDirection.Output;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteScalar();
            Session["userid"] = cmd.Parameters["@u_Id"].Value;
           
            Sendemail();
           
            lblMessage.Visible = true;
            lblMessage.Text = "You have added successfully. Check  you email and verify your email";
        }
        catch (Exception ex)
        {
            lblMessage.Visible = true;
            lblMessage.Text = ex.Message.ToString();


        }
        finally
        {
            con.Close();
            con.Dispose();
           
            //      Response.Redirect("operator-profile.aspx");
        }
    }

        public void Sendemail()
        {
            dac.Connection.Close();
            SqlParameter[] param = new SqlParameter[] { new SqlParameter("@u_Id", Session["userid"]) };
            DataTable dt=dac.GetDataTable("Getuseremailbyid", param);
             string em="";
            if(dt.Rows.Count>0)
            {
                 em=dt.Rows[0]["u_Email"].ToString();
            }

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            string ur="http://naturesurfers.com/verification.aspx?id=" + Session["userid"];
            string msg =ur;


            //mail.From = new MailAddress("mmzaheerkhan@gmail.com");
            //mail.To.Add(em);
            //mail.Subject = "Email Verification";
            //mail.Body = msg;

            //SmtpServer.Port = 587;
            //SmtpServer.Credentials = new System.Net.NetworkCredential("mmzaheerkhan@gmail.com", "");
            //SmtpServer.EnableSsl = true;

            //SmtpServer.Send(mail);


            MailMessage EmailMsg = new MailMessage();
            EmailMsg.From = new MailAddress("nature@naturesurfers.com");
            EmailMsg.To.Add(em);
            EmailMsg.Subject = "Email Verification";
            EmailMsg.Body = msg;
            EmailMsg.IsBodyHtml = true;
            EmailMsg.Priority = MailPriority.Normal;

            SmtpClient MailClient = new SmtpClient("mail.naturesurfers.com");
            MailClient.Credentials = new System.Net.NetworkCredential("nature@naturesurfers.com", "e3Xlb9^3");
            MailClient.Send(EmailMsg);

            lblMessage.Text = "Please check your email and update your password";
            
        }
}