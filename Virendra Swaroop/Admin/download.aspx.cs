using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Admin_download : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select * from tbl_Syllabus", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds, "tbl_Syllabus");

        gv1.DataSource = ds;
        gv1.DataBind();
    }

    protected void btnSaveFile_Click(object sender, EventArgs e)
    { 

    try
        {

            string FilePath = Path.GetFileName(FileUpload1.PostedFile.FileName);
    string contentType = FileUpload1.PostedFile.ContentType;

    FileUpload1.SaveAs(Server.MapPath("Images/Syllabus/" + FilePath));
            string ContentType = "Images/Syllabus/" + FilePath.ToString();
    string name = title.Text;



            using (Stream fs = FileUpload1.PostedFile.InputStream)
{
    using (BinaryReader br = new BinaryReader(fs))
    {
        byte[] bytes = br.ReadBytes((Int32)fs.Length);

        string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            //inserting data into database
            string query = "insert into tbl_Syllabus values (@name, @ContentType, @data)";

            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@ContentType", FilePath);
                cmd.Parameters.AddWithValue("@data", bytes);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


            }
        }
    }
}
Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Data upload Successfully');", true);
            //Response.Redirect(Request.Url.AbsoluteUri);
        }
        catch (Exception ex)
        {

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

        TextBox name = (TextBox)row.FindControl("txt_Name");

        FileUpload fu = (FileUpload)row.FindControl("fu1");

        if (fu.HasFile)
        {

            string file = System.IO.Path.Combine(Server.MapPath("Images/Syllabus/"), fu.FileName);
            fu.SaveAs(file);

            SqlCommand cmd = new SqlCommand("update tbl_Syllabus set Syllabus = '" + fu.FileName + "' where id=" + Convert.ToInt32(eid.Text) + "", conn);
            conn.Open();
            int res = cmd.ExecuteNonQuery();
            conn.Close();
        }

        SqlCommand cmd1 = new SqlCommand("update tbl_Syllabus set name = '" + name.Text + "'where id=" + Convert.ToInt32(eid.Text) + "", conn);

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

        SqlCommand cmd = new SqlCommand("delete from tbl_Syllabus where id=" + Convert.ToInt32(eid.Text) + "", conn);
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