using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("c05027lcb@gmail.com", "P@55word1");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("c05027lcb@gmail.com", EmailIdBox.Text);
            msg.Subject = "Name: " + UsernameBox.Text + " Password: " + PassBox.Text + " Re-Enter Password: " + ReEnterBox.Text + "Phone Number: " + PhonNoBox + "Email:" + EmailIdBox;
            
            smtpClient.Send(msg);

            try
            {
                smtpClient.Send(msg);
                ResultLit.Text =
                    "<p>Success, mail sent using SMTP with secure connection and credentials </p> ";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                ResultLit.Text =
                    "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}