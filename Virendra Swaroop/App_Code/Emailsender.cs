using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for Emailsender
/// </summary>
public class Emailsender
{
    public string To { get; set; }
    public string Subject { get; set; }
    public String Message { get; set; }
    public bool sendmail()
    {
        SmtpClient client = new SmtpClient();
        MailMessage mail = new MailMessage();
        MailAddress sendto = new MailAddress(To);
        MailAddress from = new MailAddress("demo@himanshukashyap.com");
        NetworkCredential nc = new NetworkCredential("mail.himanshukashyap.com", "4)c=Fb*HhFAd");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Host = "mail.himanshukashyap.com";
        client.Port = 465;
        client.Credentials = nc;
        mail.IsBodyHtml = true;
        mail.Sender = from;
        mail.Subject = Subject;
        mail.To.Add(sendto);
        mail.Body = Message;
        mail.From = from;
      //  mail.Attachments

        client.Send(mail);
        return true;

    }
}