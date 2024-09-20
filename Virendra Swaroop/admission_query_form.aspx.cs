using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admission_query_form : System.Web.UI.Page
{
    dbconnection con = new dbconnection();
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btn_Click1(object sender, EventArgs e)
    {
        string FName = fname.Text;
        string Foccupation = foccupation.Text;
        string MName = mname.Text;
        string MOccupation = moccupation.Text;
        string Mobile = number.Text;
        string Email = email.Text;
        string Address = address.Text;
        string ChildName = chils.Text;
        string DOB = dob.Text;
        string Gender = gender.Text;
        string CurrentSchool = school.Text;
        string CurrentClass = subject.Text;
        string msga = msgsdTA.Text;

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
                    string Path1 = "~/Admin/Images/Report/" + Path.GetFileName(_HttpPostedFile.FileName);

                    _HttpPostedFile.SaveAs(Server.MapPath(Path1));

                    //Data sent To Sqlserver
                    string query = "insert into Admission_details (FatherName,FOccupation,MotherName,MOccupation,Number,Email, Address,ChildName,DOB,Gender,CurrentSchool,CurrentClass,QueryMessage) values('" + FName + "', '" + Foccupation + "', '" + MName + "', '" + MOccupation + "','" + Mobile + "','" + Email + "','" + Address + "','" + ChildName + "','" + DOB + "','" + Gender + "','" + CurrentSchool + "','" + CurrentClass + "','" + msgsdTA.Text + "')";
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    Response.Write("<script>alert('All Record Successful Save')</script>");
                   

                    return;
                }
            }
            sqlTran.Commit();

            Response.Write("<script>alert('All Record Successful Save')</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('All Record Successful Save')</script>");
            try
            {
                sqlTran.Rollback();
            }
            catch (Exception exRollback)
            {
                Response.Write("<script>alert('All Record Successful Save')</script>");
            }
        }
    }
}