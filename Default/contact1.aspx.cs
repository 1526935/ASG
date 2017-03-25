using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class contact1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("c05027lcb@gmail.com", "P@55word1");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("c05027lcb@gmail.com", EmailTxt.Text);
            msg.Subject = "Name: " + TxtName.Text + " Subject: " + SubjectTxt.Text;
            msg.Body = MsgTxt.Text;
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                ResultTxt.Text =
                    "<p>Success, mail sent using SMTP with secure connection and credentials </p> ";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                ResultTxt.Text = 
                    "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";

            }
        }
    }
}