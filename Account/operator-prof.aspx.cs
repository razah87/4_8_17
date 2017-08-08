using Pearl.DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_operator_prof : System.Web.UI.Page
{
    public IDACManager dac = DACManagerFactory.GetDACManager(ConfigurationManager.ConnectionStrings["DataConnectionString"].ConnectionString, DACManagers.SqlServerDACManager);
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSaveoperator_Click(object sender, EventArgs e)
    {
        AddOperator();
        SaveFile();
        lblmessage.InnerText = "Your profile has created successfuly";
        lblmessage.Visible = true;
        //Sendemail();
        Defaultfield();
    }


    public void AddOperator()
    {
        string savePath = "Uploadedfiles\\Operators\\";
        SqlParameter[] param = new SqlParameter[] 
        {
        new SqlParameter("O_Name",txtOperatorName.Text),
      //  new SqlParameter("O_Cel",ddlCountries.SelectedItem.Text),
        new SqlParameter("O_Phone",txtOPhone.Text),
        new SqlParameter("O_Email",txtOEmail.Text),
        new SqlParameter("O_Address",txtOAddress.Text),
        new SqlParameter("O_Com_Name",txtOCompany.Text),
        new SqlParameter("O_Com_Description",txtOperatorDes.Text),
        new SqlParameter("O_Com_Content",txtOperatorContent.Text),
        new SqlParameter("O_Com_Coverimage",savePath+fuCoverfoto.FileName),
        new SqlParameter("O_Profileimage",savePath+fuOProfileimage.FileName),
        new SqlParameter("Tour_Type",txtTourtype.Text),
        new SqlParameter("YBE",txtYearofbusiness.Text),
        new SqlParameter("Interested_Areas",txtYourIA.Text),
        new SqlParameter("BookingsPM",txtBookingpermonth.Text),
        new SqlParameter("IsActive",1)
        };

      dac.ExecuteNonQuery("Add_Operator", param);
        string idr = dac.ExecuteScaler("GETcurrentUSERID").ToString();
       
            Session["newuserid"] = idr[1];
        
            }

    public void Defaultfield()
    {
        txtOperatorName.Text = "";
        txtOEmail.Text = "";
        txtOAddress.Text = "";
        txtOCompany.Text = "";
        txtOperatorDes.Text = "";
        txtOperatorContent.Text = "";
        txtTourtype.Text = "";
        txtYearofbusiness.Text = "";
        txtYourIA.Text = "";
        txtBookingpermonth.Text = "";
    }

    public void SaveFile()
    {
        // Specify the path to save the uploaded file to.
        string savePath = "D:\\InetPub\\vhosts\\naturesurfers.com\\httpdocs\\Uploadedfiles\\Operators\\";

        // Get the name of the file to upload.
        string fileName = fuCoverfoto.FileName;
        string oProfileimg = fuCoverfoto.FileName;
        // Create the path and file name to check for duplicates.
        if (fuCoverfoto.HasFile)
        {

            fuCoverfoto.SaveAs(savePath + fileName);
        }
        if (fuOProfileimage.HasFile) 
        { 
            fuOProfileimage.SaveAs(savePath + oProfileimg); 
        }

    }

    public void Sendemail()
    {
        var queryParams = new NameValueCollection()
        {                     
            { "type", Session["newuserid"].ToString() }
        };

        string url = "Account/comfirm.aspx" + ToQueryString(queryParams);

        using (MailMessage mail = new MailMessage())
        {
            mail.From = new MailAddress("mmzaheerkhan@gmail.com");
            mail.To.Add(txtOEmail.Text.Trim());
            mail.Subject = "Hello World";
            mail.Body = "<P>Click here to confirm</h1>" + "<a href='"+url+"'>"+url+"</a></p>";
            mail.IsBodyHtml = true;
           

            using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
            {
                smtp.Credentials = new NetworkCredential("mmzaheerkhan@gmail.com", "natsikap1234");
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
        }

        lblmessage.InnerText = "Your profile has created successfuly";
        lblmessage.Visible = true;
    }

    public string ToQueryString(NameValueCollection nvc)
    {
        StringBuilder sb = new StringBuilder("?");

        bool first = true;

        foreach (string key in nvc.AllKeys)
        {
            foreach (string value in nvc.GetValues(key))
            {
                if (!first)
                {
                    sb.Append("&");
                }

                sb.AppendFormat("{0}={1}", Uri.EscapeDataString(key), Uri.EscapeDataString(value));

                first = false;
            }
        }

        return sb.ToString();
    }
}