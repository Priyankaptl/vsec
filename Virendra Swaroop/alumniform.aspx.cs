using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Lifetime;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class alumniform : System.Web.UI.Page
{
    dbconnection con = new dbconnection();
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        using (conn)
        {
            string Name = name.Text;
            string Passing = passingyear.Text;
            string CurrentJob = currentjob.Text;
            string Alumni_Pic = photo.FileName;
            conn.Open();
            SqlTransaction sqlTran = conn.BeginTransaction();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Transaction = sqlTran;
            try
            {
                HttpFileCollection _HttpFileCollection = Request.Files;
                for (int i = 0; i < _HttpFileCollection.Count; i++)
                {
                    HttpPostedFile _HttpPostedFile = _HttpFileCollection[i];
                    if (_HttpPostedFile.ContentLength > 0)
                    {
                        string Path1 = "~/Admin/Images/Alumni/" + Path.GetFileName(_HttpPostedFile.FileName);

                        _HttpPostedFile.SaveAs(Server.MapPath(Path1));
                        cmd.CommandText = @"insert into Alumni(Name,designation,Passingyear,Photo,Status) values('" + Name + "','" + Passing + "','" + CurrentJob + "','" + Alumni_Pic + "','"+false+"') ";
                        cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        Response.Write("Please Upload Image File");
                        
                        return;
                    }
                }
                sqlTran.Commit();
               
                Response.Write("Images Added Successfully ");
               
            }
            catch (Exception ex)
            {
                Response.Write("Images Added Successfully ");
                try
                {
                    sqlTran.Rollback();
                }
                catch (Exception exRollback)
                {
                    Response.Write("Images Added Successfully ");
                }
            }


            //Data sent to mail
            SMTPEmailSender emailSender = new SMTPEmailSender();

            //--Mails jinko email bhejni hai
            var smtpReceivers = ConfigurationManager.AppSettings["AlumniEmailReceivers"].ToString().Split(',');
            string Subject = "Dr Virendra Swarup Education Centre Alumni Form Data";

            StringBuilder builder = new StringBuilder();
            builder.AppendLine(@"Dear VSEC,<br/>");
            builder.AppendLine("<br/><br/><br/>");

            builder.AppendLine("<table border='1' cellspacing='0' cellpadding='8' style='width: 100%; text-align: center;' ");
            builder.AppendLine("<tr><td> Name :</td><td>" + Name + "</td></tr>");
            builder.AppendLine("<tr><td> Passing Year :</td><td>" + Passing + "</td></tr>");
            builder.AppendLine("<tr><td> Current Designation :</td><td>" + CurrentJob + "</td></tr>");
            builder.AppendLine("<tr><td> Alumni Photo :</td><td>" + Alumni_Pic + "</td></tr>");

            builder.AppendLine("</table>");

            builder.AppendLine("<br/><br/>");

            builder.AppendLine("Regards");
            builder.AppendLine("");

            string Body = builder.ToString();

            bool isemailsent = emailSender.SendEmail(smtpReceivers, Subject, Body);
            if (isemailsent)
            {
                Response.Write("<script>alert('Data Sent Successfully')</script>");
            }

            else
            {
                Response.Write("Something went wrong!! Try again !");
            }


        }
    }
}




