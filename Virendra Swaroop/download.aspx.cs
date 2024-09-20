using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class download : System.Web.UI.Page
{
    dbconnection con = new dbconnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        
             if (!IsPostBack)
               {
            BindGrid();
               }
                }

    private void BindGrid()
         {
    string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
    using (SqlConnection con = new SqlConnection(constr))
    {
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.CommandText = "SELECT * FROM tbl_Syllabus ORDER BY Id ASC";
            cmd.Connection = con;
            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
    }
}



    protected void lbnkVidTtile1_Click(object sender, EventArgs e)
    {
        int id = int.Parse((sender as LinkButton).CommandArgument);
        string SelectedFileName;
        string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select name,ContentType,data from tbl_Syllabus where id=@id";
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();
                    SelectedFileName = null;
                    if (sdr["ContentType"] != null) { SelectedFileName = sdr["ContentType"].ToString(); }
                }
                con.Close();
            }
        }

        string FileUpload1 = Server.MapPath("Images/Syllabus/") + SelectedFileName;
        WebClient User = new WebClient();
        Byte[] FileBuffer = User.DownloadData(FileUpload1);
        if (FileBuffer != null)
        {
            Response.AddHeader("Content-disposition", "inline; filename= Syllabus.pdf");
            Response.ContentType = "application/pdf";
            Response.BinaryWrite(FileBuffer);
        }

    }
    //protected void lnkDownload_Click(object sender, EventArgs e)
    //{
    //    int id = int.Parse((sender as LinkButton).CommandArgument);
    //    byte[] bytes;
    //    string fileName, contentType;
    //    string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
    //    using (SqlConnection con = new SqlConnection(constr))
    //    {
    //        using (SqlCommand cmd = new SqlCommand())
    //        {
    //            cmd.CommandText = "select name,ContentType,data from tbl_Syllabus where id=@id";
    //            cmd.Parameters.AddWithValue("@id", id);
    //            cmd.Connection = con;
    //            con.Open();
    //            using (SqlDataReader sdr = cmd.ExecuteReader())
    //            {
    //                sdr.Read();
    //                bytes = (byte[])sdr["data"];
    //                contentType = sdr["ContentType"].ToString();
    //                fileName = sdr["name"].ToString();
    //            }
    //            con.Close();
    //        }
    //    }
    //    string FileUpload1 = Server.MapPath("Images/Syllabus/");
    //    System.Net.WebClient User = new System.Net.WebClient();


    //    if (bytes != null)
    //    {

    //        Response.ContentType = "application/pdf";
    //        Response.AddHeader("Content-Disposition", "attachment;filename=\"Syllabus.pdf\"");

    //        Response.BinaryWrite(bytes);
    //        Response.Flush();
    //        Response.End();
    //    }
    //}
}
