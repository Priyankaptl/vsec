using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class career : System.Web.UI.Page
{
    dbconnection con = new dbconnection();
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void button_Click1(object sender, EventArgs e)
    {
        using (conn)
        {
            string Post = post.Text;
            string Name = name.Text;
            string Email = email.Text;
            string DOB = dob.Text;
            string Mobile = mobile.Text;
            string Address = address.Text;
            string Resume = resume.FileName;
            string Marks = Xmarks.Text;
            string Board = Xboard.Text;
            string School = Xschool.Text;
            string Subjects = Xsubject.Text;
            string Year = Xyear.Text;
            string XIImarks = marks1.Text;
            string XIIboard = board2.Text;
            string XIIschool = school3.Text;
            string XIIsubject = subject4.Text;
            string XIIyear = year5.Text;
            string graduation_Marks = Graduation.Text;
            string graduation_BoardUniversity = Graduation1.Text;
            string graduation_SchoolCollege = Graduation2.Text;
            string graduation_Specialization = Graduation3.Text;
            string graduation_Year = Graduation4.Text;
            string Post1 = txtPost.Text;
            string Post2 = txtPost1.Text;
            string Post3 = txtPost2.Text;
            string Post4 = txtPost3.Text;
            string Post5 = txtPost4.Text;

            string bed1 = txtbed.Text;
            string bed2 = txtbed1.Text;
            string bed3 = txtbed2.Text;
            string bed4 = txtbed3.Text;
            string bed5 = txtbed4.Text;

            string Qualification1 = txt_Qualification1.Text;
            string Qualification2 = txt_Qualification2.Text;
            string Qualification3 = txt_Qualification3.Text;
            string Qualification4 = txt_Qualification4.Text;
            string Qualification5 = txt_Qualification5.Text;

            string institution1 = txtInstitution.Text;
            string fromyear1 = txtfromMonthYear.Text;
            string toyear1 = txttoMonthYear.Text;
            string classsubject1 = txtSubjectnew.Text;

            string institution2 = txtInstitution1.Text;
            string fromyear2 = txtfromMonthYear2.Text;
            string toyear2 = txttoMonthYear3.Text;
            string classsubject2 = txtSubjectnew4.Text;

            string institution3 = txtInstitution5.Text;
            string fromyear3 = txtfromMonthYear6.Text;
            string toyear3 = txttoMonthYear7.Text;
            string classsubject3 = txtSubjectnew8.Text;

            Random rnd = new Random();
            int rnd_number = rnd.Next(1000, 9999);

            string filename = "resume_" + DateTime.Now.ToString("ddMMyyyyhhmmss") + rnd_number;
           // Response.Write("<script>alert('login successful');</script>");
            string ext = Resume.Substring(Resume.LastIndexOf(".")).ToLower();
            string Photo = filename + ext;
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
                        string Path1 = "~/Admin/Images/Resume/" + Path.GetFileName(_HttpPostedFile.FileName);
                       

                        _HttpPostedFile.SaveAs(Server.MapPath(Path1));

                        //Data sent To Sqlserver
                        cmd.CommandText = "insert into career(Post,Name, Email,DOB,Mobile,Address,Resume,Marks,Board,School,Subjects,Year,XIImarks,  XIIboard,XIIschool,XIIsubject,XIIyear,Graduation1,Graduation2,Graduation3,Graduation4,Graduation5,Post1,Post2,Post3,Post4,Post5,BEdMEd1,BEdMEd2,BEdMEd3,BEdMEd4,BEdMEd5,AnyOther1,AnyOther2,AnyOther3,AnyOther4,AnyOther5,Institution,FromYear,Toyear,Classsubject,Institution1,FromYear1,Toyear1,Classsubject1,Institution2,FromYear2,Toyear2,Classsubject2) values( '" + Post + "','" + Name + "', '" + Email + "','" + DOB + "', '" + Mobile + "', '" + Address + "','" + Resume + "','" + Marks + "','" + Board + "','" + School + "','" + Subjects + "','" + Year + "','" + XIImarks + "','" + XIIboard + "','" + XIIschool + "','" + XIIsubject + "','" + XIIyear + "','" + graduation_Marks + "','" + graduation_BoardUniversity + "','" + graduation_SchoolCollege + "','" + graduation_Specialization + "','" + graduation_Year + "','" + Post1 + "','" + Post2 + "','" + Post3 + "','" + Post4 + "','" + Post5 + "','" + bed1 + "','" + bed2 + "','" + bed3 + "','" + bed4 + "','" + bed5 + "','" + Qualification1 + "','" + Qualification2 + "','" + Qualification3 + "','" + Qualification4 + "','" + Qualification5 + "','" + institution1 + "','" + fromyear1 + "','" + toyear1 + "','" + classsubject2 + "','" + institution2 + "','" + fromyear2 + "','" + toyear2 + "','" + classsubject1 + "','" + institution3 + "','" + fromyear3 + "','" + toyear3 + "','" + classsubject3 + "')";

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
            var smtpReceivers = ConfigurationManager.AppSettings["CareerEmailReceivers"].ToString().Split(',');
            string subjectmail = "Dr Virendra Swarup Education Centre's Job application form response";

            StringBuilder builder = new StringBuilder();
            builder.AppendLine(@"Dear VSEC,<br/>");
            builder.AppendLine("<br/><br/><br/>");

            builder.AppendLine("<table border='1' cellspacing='0' cellpadding='8' style='width: 100%; text-align: center;' ");
            builder.AppendLine("<tr><td> Post :</td><td>" + Post + "</td></tr>");
            builder.AppendLine("<tr><td> Name :</td><td>" + Name + "</td></tr>");
            builder.AppendLine("<tr><td> Email :</td><td>" + Email + "</td></tr>");
            builder.AppendLine("<tr><td> Phone :</td><td>" + Mobile + "</td></tr>");
            builder.AppendLine("<tr><td> DOB :</td><td>" + DOB + "</td></tr>");
            builder.AppendLine("<tr><td> Address :</td><td>" + Address + "</td></tr>");
            builder.AppendLine("<tr><td> Resume :</td><td>" + Resume + "</td></tr>");
            builder.AppendLine("<tr><td> Marks :</td><td>" + Marks + "</td></tr>");
            builder.AppendLine("<tr><td> Board :</td><td>" + Board + "</td></tr>");
            builder.AppendLine("<tr><td> School :</td><td>" + School + "</td></tr>");
            builder.AppendLine("<tr><td> Subjects :</td><td>" + Subjects + "</td></tr>");
            builder.AppendLine("<tr><td> Year :</td><td>" + Year + "</td></tr>");

            builder.AppendLine("<tr><td> XIImarks :</td><td>" + XIImarks + "</td></tr>");
            builder.AppendLine("<tr><td> XIIboard :</td><td>" + XIIboard + "</td></tr>");
            builder.AppendLine("<tr><td> XIIschool :</td><td>" + XIIschool + "</td></tr>");
            builder.AppendLine("<tr><td> XIIsubject :</td><td>" + XIIsubject + "</td></tr>");
            builder.AppendLine("<tr><td> XIIyear :</td><td>" + XIIyear + "</td></tr>");

            builder.AppendLine("<tr><td> Graduation Marks :</td><td>" + graduation_Marks + "</td></tr>");
            builder.AppendLine("<tr><td> Graduation Board University :</td><td>" + graduation_BoardUniversity + "</td></tr>");
            builder.AppendLine("<tr><td> Graduation School/College :</td><td>" + graduation_SchoolCollege + "</td></tr>");
            builder.AppendLine("<tr><td> Graduation Specialization :</td><td>" + graduation_Specialization + "</td></tr>");
            builder.AppendLine("<tr><td> Graduation Year :</td><td>" + graduation_Year + "</td></tr>");

            builder.AppendLine("<tr><td> Post Marks :</td><td>" + Post1 + "</td></tr>");
            builder.AppendLine("<tr><td> Post Board University:</td><td>" + Post2 + "</td></tr>");
            builder.AppendLine("<tr><td> Post School/College :</td><td>" + Post3 + "</td></tr>");
            builder.AppendLine("<tr><td> Post Specialization :</td><td>" + Post4 + "</td></tr>");
            builder.AppendLine("<tr><td> Post Year:</td><td>" + Post5 + "</td></tr>");


            builder.AppendLine("<tr><td> B.Ed/M.Ed Marks :</td><td>" + bed1 + "</td></tr>");
            builder.AppendLine("<tr><td> B.Ed/M.Ed Board University :</td><td>" + bed2 + "</td></tr>");
            builder.AppendLine("<tr><td> B.Ed/M.Ed School/College :</td><td>" + bed3 + "</td></tr>");
            builder.AppendLine("<tr><td> B.Ed/M.Ed Specialization  :</td><td>" + bed4 + "</td></tr>");
            builder.AppendLine("<tr><td>B.Ed/M.Ed year:</td><td>" + bed5 + "</td></tr>");

            builder.AppendLine("<tr><td>Any Other Qualification :</td><td>" + Qualification1 + "</td></tr>");
            builder.AppendLine("<tr><td>Any Other Qualification :</td><td>" + Qualification2 + "</td></tr>");
            builder.AppendLine("<tr><td>Any Other Qualification :</td><td>" + Qualification3 + "</td></tr>");
            builder.AppendLine("<tr><td>Any Other Qualification :</td><td>" + Qualification4 + "</td></tr>");
            builder.AppendLine("<tr><td>Any Other Qualification :</td><td>" + Qualification5 + "</td></tr>");


            builder.AppendLine("<tr><td> Institution :</td><td>" + institution1 + "</td></tr>");
            builder.AppendLine("<tr><td> From year :</td><td>" + fromyear1 + "</td></tr>");
            builder.AppendLine("<tr><td> To year :</td><td>" + toyear1 + "</td></tr>");
            builder.AppendLine("<tr><td> Class Subject :</td><td>" + classsubject1 + "</td></tr>");

            builder.AppendLine("<tr><td> Institution :</td><td>" + institution2 + "</td></tr>");
            builder.AppendLine("<tr><td> From year :</td><td>" + fromyear2 + "</td></tr>");
            builder.AppendLine("<tr><td> To year :</td><td>" + toyear2 + "</td></tr>");
            builder.AppendLine("<tr><td> Class Subject :</td><td>" + classsubject2 + "</td></tr>");


            builder.AppendLine("<tr><td> Institution :</td><td>" + institution3 + "</td></tr>");
            builder.AppendLine("<tr><td> From year :</td><td>" + fromyear3 + "</td></tr>");
            builder.AppendLine("<tr><td> To year :</td><td>" + toyear3 + "</td></tr>");
            builder.AppendLine("<tr><td> Class Subject :</td><td>" + classsubject3 + "</td></tr>");



            builder.AppendLine("</table>");


            builder.AppendLine("<br/><br/>");

            builder.AppendLine("Regards");
            builder.AppendLine("");

            string Body = builder.ToString();

            bool isemailsent = emailSender.SendEmail(smtpReceivers, subjectmail, Body);
            if (isemailsent)
            {
                Response.Write("<script>alert('Your application has been sent successfully')</script>");
            }

            else
            {
                Response.Write("Something went wrong!! Try again !");
            }

        }
    }
}


