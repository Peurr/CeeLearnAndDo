using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CeeLearnAndDo
{
    public partial class Frontpage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void SendMail()
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("justin.breg@ziggo.nl");

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential(mail.From.ToString(), "wachtwoord");
            smtp.Host = "smtp.ziggo.nl";

            mail.To.Add(new MailAddress(txt_email.Text));

            mail.IsBodyHtml = true;
            string message = String.Format("Hi, <br /> {0} <br /> Mail sent by the Mail-a-friend tool on Ceelearnanddo.com", txt_bericht.Text);

            mail.Subject = "Mail-a-friend CeeLearnAndDo";
            mail.Body = message;
            smtp.Send(mail);

        }

        protected void btn_verstuurMail_Click(object sender, EventArgs e)
        {
            SendMail();
        }
    }
}