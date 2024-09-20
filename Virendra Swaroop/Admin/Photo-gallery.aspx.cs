using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class Admin_Photo_gallery : System.Web.UI.Page
{
    static string dbstring = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSaveFile_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(dbstring))
        {
            con.Open();
            SqlTransaction sqlTran = con.BeginTransaction();
            SqlCommand cmd = con.CreateCommand();
            cmd.Transaction = sqlTran;
            try
            {
                HttpFileCollection _HttpFileCollection = Request.Files;
                for (int i = 0; i < _HttpFileCollection.Count; i++)
                {
                    HttpPostedFile _HttpPostedFile = _HttpFileCollection[i];
                    if (_HttpPostedFile.ContentLength > 0)
                    {
                        string Path1 = "Images/photo/" + Path.GetFileName(_HttpPostedFile.FileName);

                        _HttpPostedFile.SaveAs(Server.MapPath(Path1));
                        cmd.CommandText = @"Insert Into addgallery(photo,media) Values ('" + Path1 + "',N'" +DDlCategory.SelectedItem.Value + "')";
                        cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        lt_msg.Text = RishiMathod.Errormsg("Please Upload Gallery Image File");
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
}