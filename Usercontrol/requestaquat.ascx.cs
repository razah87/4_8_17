using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Usercontrol_requestaquat : System.Web.UI.UserControl
{
    private IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCustomizequat_Click(object sender, EventArgs e)
    {
        SqlParameter[] param = new SqlParameter[] {
        new SqlParameter("Destination",txtDestination.Text),
        new SqlParameter("Departure_Date",txtDeparturedate.Text),
        new SqlParameter("Days", txtNOofdays.Text),
        new SqlParameter("No_People",txtNOofpeople.Text),
        new SqlParameter("Phone",txtPhoneno.Text),
        new SqlParameter("Name",txtYourname.Text),
        new SqlParameter("Email",txtYouremail.Text)
        };
        dac.ExecuteNonQuery("Insert_tour_requests", param);

        

        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

        mail.From = new MailAddress("mmzaheerkhan@gmail.com");
        mail.To.Add("zaheer@admarksolutions.com");
        mail.Subject = "Test Mail";
        mail.Body = "This is for testing SMTP mail from GMAIL";

        SmtpServer.Port = 587;
        SmtpServer.Credentials = new System.Net.NetworkCredential("mmzaheerkhan@gmail.com", "natsikap1234");
        SmtpServer.EnableSsl = true;

        SmtpServer.Send(mail);
        lblMessage.Text = "Your request has sent successfully. We will contact you within two working days";

    }
}