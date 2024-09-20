using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System;
using System.Net;
using System.Net.Mail;
using System.Configuration;
/// <summary>
/// Summary description for SMTPEmailSender
/// </summary>
public class SMTPEmailSender
{
    public SMTPEmailSender()
    {

    }

    public bool SendEmail(string[] ToEmails, string Subject, string Body)
    {
        bool Status = false;

        // Configure the SMTP client
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;

        string SMTPSender = ConfigurationManager.AppSettings["SMTPSender"].ToString();
        string SMTPSenderPassword = ConfigurationManager.AppSettings["SMTPSenderPassword"].ToString();

        client.Credentials = new NetworkCredential(SMTPSender, SMTPSenderPassword);

        // Create the email message
        MailMessage message = new MailMessage();
        message.From = new MailAddress(SMTPSender, "VSEC");

        foreach (var email in ToEmails)
        {
            if (!string.IsNullOrEmpty(email))
            {
                message.To.Add(email);
            }
        }

        message.Subject = Subject;
        message.Body = Body;
        message.IsBodyHtml = true;
        try
        {
            // Send the email
            client.Send(message);
            Status = true;
        }
        catch (Exception ex)
        {
            Status = false;
        }

        return Status;
    }
}