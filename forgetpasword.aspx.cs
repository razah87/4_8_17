using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
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
        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("192.185.7.15");
        string ur = "http://naturesurfers.com/getnewpassword.aspx";
        string msg = ur;


       // mail.From = new MailAddress("nature@naturesurfers.com");
       // mail.To.Add(txtFGEmail.Text);
       // mail.Subject = "Nature Surfers - Update password";
       // mail.Body = msg;

       //// SmtpServer.Port = 587;
       // SmtpServer.Credentials = new System.Net.NetworkCredential("nature@naturesurfers.com", "Gde334t*");
       // SmtpServer.EnableSsl = true;

       // SmtpServer.Send(mail);

        

                                MailMessage EmailMsg = new MailMessage();
                                EmailMsg.From = new MailAddress("nature@naturesurfers.com");
                                EmailMsg.To.Add(txtFGEmail.Text);
                                EmailMsg.Subject = "Nature Surfers - Update password";
                                EmailMsg.Body = ur;
                                EmailMsg.IsBodyHtml = true;
                                EmailMsg.Priority = MailPriority.Normal;

                                SmtpClient MailClient = new SmtpClient("mail.naturesurfers.com");
                                MailClient.Credentials = new System.Net.NetworkCredential("nature@naturesurfers.com", "e3Xlb9^3");
                                MailClient.Send(EmailMsg);

                                lblMessage.Text = "Please check your email and update your password";
       
    }
}