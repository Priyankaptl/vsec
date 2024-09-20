 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Drawing;
using System.Xml.Linq;
//using System.Net.Mime.MediaTypeNames;


public partial class Admin_Dashboard : System.Web.UI.Page
{
    dbconnection con = new dbconnection();
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        SqlCommand cmd = new SqlCommand("select * from addgallery", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds, "addgallery");

        gv1.DataSource = ds;
        gv1.DataBind();
    }
    protected void btnSaveFile_Click(object sender, EventArgs e)
    {

        using (conn)
        {
            string events = Events.Text;
            string Date = TxtDob.Text;

            conn.Open();
            SqlTransaction sqlTran = conn.BeginTransaction();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Transaction = sqlTran;

            string Path1 = FuImage.HasFiles ? FuImage.FileName : " ";
            string Path2 = FuImage1.HasFiles ? FuImage1.FileName : " ";
            string Path3 = FuImage2.HasFiles ? FuImage2.FileName : " ";
            string Path4 = FuImage3.HasFiles ? FuImage3.FileName : " ";
            string Path5 = FuImage4.HasFiles ? FuImage4.FileName : " ";
            string Path6 = FuImage4.HasFiles ? FuImage5.FileName : " ";
            string Path7 = FuImage5.HasFiles ? FuImage6.FileName : " ";

            cmd.CommandText = @"Insert Into addgallery(events,eventsdate,photo,photo1,photo2,photo3,photo4,photo5,photo6) Values ('" + Events.Text + "','" + TxtDob.Text + "','" + Path1 + "','" + Path2 + "','" + Path3 + "','" + Path4 + "','" + Path5 + "','" + Path6 + "','" + Path7 + "')";
            cmd.ExecuteNonQuery();

            sqlTran.Commit();

          

            if (FuImage.HasFiles)
            {
                FuImage.SaveAs(Server.MapPath("~/Admin/images/Gallery/") + Path1);
                Response.Write("<script>alert(' Details added successfully')</script>");
            }
            if (FuImage1.HasFiles)
            {
                FuImage1.SaveAs(Server.MapPath("~/Admin/images/Gallery/") + Path2);
                Response.Write("<script>alert(' Details added successfully')</script>");
            }

            if (FuImage2.HasFiles)
            {
                FuImage2.SaveAs(Server.MapPath("~/Admin/images/Gallery/") + Path3);
                Response.Write("<script>alert(' Details added successfully')</script>");
            }

            if (FuImage3.HasFiles)
            {
                FuImage3.SaveAs(Server.MapPath("~/Admin/images/Gallery/") + Path4);
                Response.Write("<script>alert(' Details added successfully')</script>");
            }

            if (FuImage4.HasFiles)
            {
                FuImage4.SaveAs(Server.MapPath("~/Admin/images/Gallery/") + Path5);
                Response.Write("<script>alert(' Details added successfully')</script>");
            }

            if (FuImage5.HasFiles)
            {
                FuImage5.SaveAs(Server.MapPath("~/Admin/images/Gallery/") + Path6);
                Response.Write("<script>alert(' Details added successfully')</script>");
            }

            if (FuImage6.HasFiles)
            {
                FuImage6.SaveAs(Server.MapPath("~/Admin/images/Gallery/") + Path7);
                Response.Write("<script>alert(' Details added successfully')</script>");
            }
        }
    }

    protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv1.EditIndex = e.NewEditIndex;
        Bind();
    }
    protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)gv1.Rows[index];

        Label eid = (Label)row.FindControl("lbleid");

        TextBox name = (TextBox)row.FindControl("txtCom");
        TextBox eventdate = (TextBox)row.FindControl("inputDate");
        FileUpload fu = (FileUpload)row.FindControl("fu1");
        FileUpload fu1 = (FileUpload)row.FindControl("fu2");
        FileUpload fu2 = (FileUpload)row.FindControl("fu3");
        FileUpload fu3 = (FileUpload)row.FindControl("fu4");
        FileUpload fu4 = (FileUpload)row.FindControl("fu5");
        FileUpload fu5 = (FileUpload)row.FindControl("fu6");
        FileUpload fu6 = (FileUpload)row.FindControl("fu7");

        if (fu.HasFile)
        {

            string file = System.IO.Path.Combine(Server.MapPath("~/Admin/images/Gallery/"), fu.FileName);
            fu.SaveAs(file);


            if (fu1.HasFile)
            {

                string file1 = System.IO.Path.Combine(Server.MapPath("~/Admin/images/Gallery/"), fu1.FileName);
                fu1.SaveAs(file1);
            }

            if (fu2.HasFile)
            {

                string file2 = System.IO.Path.Combine(Server.MapPath("~/Admin/images/Gallery/"), fu2.FileName);
                fu.SaveAs(file2);
            }

            if (fu3.HasFile)
            {

                string file3 = System.IO.Path.Combine(Server.MapPath("~/Admin/images/Gallery/"), fu3.FileName);
                fu.SaveAs(file3);
            }
            if (fu4.HasFile)
            {

                string file4 = System.IO.Path.Combine(Server.MapPath("~/Admin/images/Gallery/"), fu4.FileName);
                fu4.SaveAs(file4);
            }

            if (fu5.HasFile)
            {

                string file5 = System.IO.Path.Combine(Server.MapPath("~/Admin/images/Gallery/"), fu5.FileName);
                fu5.SaveAs(file5);
            }

            if (fu6.HasFile)
            {

                string file6 = System.IO.Path.Combine(Server.MapPath("~/Admin/images/Gallery/"), fu6.FileName);
                fu6.SaveAs(file6);
            }

            SqlCommand cmd = new SqlCommand("update addgallery set photo = '" + fu.FileName + "',photo1='"+fu1.FileName+ "',photo2='"+fu2.FileName+ "',photo3='"+fu3.FileName+ "',photo4='"+fu4.FileName+ "',photo5='"+fu5.FileName+ "',photo6='"+fu6.FileName+"' where id=" + Convert.ToInt32(eid.Text) + "", conn);
            conn.Open();
            int res = cmd.ExecuteNonQuery();
            conn.Close();
        }

        SqlCommand cmd1 = new SqlCommand("update addgallery set events = '"+ name.Text +"',eventsdate='" + eventdate.Text + "' where id=" + Convert.ToInt32(eid.Text) + "", conn);

        conn.Open();
        int res1 = cmd1.ExecuteNonQuery();
        conn.Close();

        if (res1 == 1)
        {
            Response.Write("<script>alert('Updation done!')</script>");
        }
        gv1.EditIndex = -1;
        Bind();
    }




    //}
    protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv1.EditIndex = -1;
        Bind();
    }

    protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)gv1.Rows[index];

        Label eid = (Label)row.FindControl("lbleid");

        SqlCommand cmd = new SqlCommand("delete from addgallery where id=" + Convert.ToInt32(eid.Text) + "", conn);
        conn.Open();
        int res = cmd.ExecuteNonQuery();
        conn.Close();

        if (res == 1)
        {
            Response.Write("<script>alert('Deletion done!')</script>");
        }
        Bind();
    }
    protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv1.PageIndex = e.NewPageIndex;
        Bind();
    }
}





