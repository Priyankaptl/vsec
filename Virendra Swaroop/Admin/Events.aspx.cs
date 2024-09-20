﻿using System;
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

public partial class Admin_Events : System.Web.UI.Page
{
    //static string dbstring = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;

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
        SqlCommand cmd = new SqlCommand("select * from Events", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds, "Events");

        gv1.DataSource = ds;
        gv1.DataBind();
    }
    protected void btnSaveFile_Click(object sender, EventArgs e)
    {

        using (conn)
        {
            string Competition = title.Text;
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
                        string Path1 = "Images/Photo/" + Path.GetFileName(_HttpPostedFile.FileName);

                        _HttpPostedFile.SaveAs(Server.MapPath(Path1));
                        cmd.CommandText = @"Insert Into Events(Photo,Title) Values ('" + Path1 + "','" + title.Text + "')";
                        cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        lt_msg.Text = RishiMathod.Errormsg("Please Upload Image File");
                        return;
                    }
                }
                sqlTran.Commit();
                //  Response.Redirect("Edit_Photo_Gallery.aspx");

                lt_msg.Text = RishiMathod.Successmsg("Images Added Successfully !");
            }
            catch (Exception ex)
            {
                lt_msg.Text = RishiMathod.Errormsg(ex.Message);
                try
                {
                    sqlTran.Rollback();
                }
                catch (Exception exRollback)
                {
                    lt_msg.Text = RishiMathod.Errormsg(exRollback.Message);
                }
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
        TextBox name = (TextBox)row.FindControl("inputDate");

        FileUpload fu = (FileUpload)row.FindControl("fu1");

        if (fu.HasFile)
        {

            string file = System.IO.Path.Combine(Server.MapPath("Images/Photo/"), fu.FileName);
            fu.SaveAs(file);

            SqlCommand cmd = new SqlCommand("update Events set Photo = '" + fu.FileName + "' where id=" + Convert.ToInt32(eid.Text) + "", conn);

            conn.Open();
            int res2 = cmd.ExecuteNonQuery();
            conn.Close();
        }
        SqlCommand cmd1 = new SqlCommand("update Events set Title = '" + name.Text + "' where id=" + Convert.ToInt32(eid.Text) + "", conn);

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

        SqlCommand cmd = new SqlCommand("delete from Events where id=" + Convert.ToInt32(eid.Text) + "", conn);
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

