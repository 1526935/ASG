using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class Contact111 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();

            MailMessage msg = new MailMessage(YourEmail.Text, "arnavictoriousvic@gmail.com");

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
           

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("arnavictoriousvic@gmail.com", "adgjmjgda1234");
            smtpClient.Credentials = credentials;
            msg.Subject = "Name: " + YourName.Text + " " + "Subject: " + " " + YourSubject.Text;
            msg.Body = YourEmail.Text + " " + Comments.Text;
            //here on button click what will done 


            try
            {

                smtpClient.Send(msg);
                ResultLit.Text = "<p>Successfully sent your mail using SMTP with secure connection and credentials, You will be responded soon.</p>";
            }
            catch (Exception ex)
            {
                ResultLit.Text = "Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}