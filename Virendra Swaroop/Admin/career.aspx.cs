using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.IO;


public partial class Admin_career : System.Web.UI.Page
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

    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the runtime error "
        //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."
    }

    private void Bind()
    {
        SqlCommand cmd = new SqlCommand("select * from career", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd) ;
       

        DataSet ds = new DataSet();
        da.Fill(ds, "career");

        gv5.DataSource = ds;
        gv5.DataBind();
       
    }

 
    protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv5.EditIndex = e.NewEditIndex;
        Bind();
    }
    protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)gv5.Rows[index];

        Label eid = (Label)row.FindControl("lbleid");

        Label Com = (Label)row.FindControl("lblCom");

        Label day = (Label)row.FindControl("lbldate");

        FileUpload fu = (FileUpload)row.FindControl("fu1");

        if (fu.HasFile)
        {

            string file = System.IO.Path.Combine(Server.MapPath("Images/Resume/"), fu.FileName);
            fu.SaveAs(file);

            SqlCommand cmd = new SqlCommand("update career set imgname = '" + fu.FileName + "' where id=" + Convert.ToInt32(eid.Text) + "," + (Com.Text) + "," + (day.Text) + ",", conn);

            conn.Open();
            int res1 = cmd.ExecuteNonQuery();
            conn.Close();

            if (res1 == 1)
            {
                Response.Write("<script>alert('Updation done!')</script>");
            }
            gv5.EditIndex = -1;
            Bind();
        }




    }
    protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv5.EditIndex = -1;
        Bind();
    }

    protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)gv5.Rows[index];

        Label eid = (Label)row.FindControl("lbleid");

        SqlCommand cmd = new SqlCommand("delete from career where id=" + Convert.ToInt32(eid.Text) + "", conn);
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
        gv5.PageIndex = e.NewPageIndex;
        Bind();
    }

    protected void btnDownload_Click(object sender, EventArgs e)
    {
        ////File to be downloaded.
        //string fileName = "Resume.pdf";

        ////Path of the File to be downloaded.
        //string filePath = Server.MapPath(string.Format("Images/Resume", fileName));

        ////Content Type and Header.
        //Response.ContentType = "application/pdf";
        //Response.AppendHe9ader("Content-Disposition", "attachment; filename=" + fileName);

        ////Writing the File to Response Stream.
        //Response.WriteFile(filePath);

        ////Flushing the Response.
        //Response.Flush();
        //Response.End();

        int id = int.Parse((((sender as LinkButton).NamingContainer as GridViewRow).FindControl("Reid") as HiddenField).Value);
        byte[] bytes;
        string filename, ContentType;
        string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = ("select Name,Resume,data from career where id=@id");
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Connection = con;
                }
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                   
                        sdr.Read();
                        bytes = (byte[])sdr["data"];
                        ContentType = sdr["ContentType"].ToString();
                        filename = sdr["Name"].ToString();
                   

                    
                }
            }
        }

        Response.Clear();
        Response.Buffer = true;
        Response.Charset =" ";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = ContentType;
        Response.AddHeader("Content-Disposition", "attachment;filename ="+filename);
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }



    protected void gv2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowIndex == 0)
                e.Row.Style.Add("HtmlTextWriterStyle.Width", "50px");
        }
    }

    //protected void btn1_Click(object sender, EventArgs e)
    //{

    //}

    
    protected void btn2_Click(object sender, EventArgs e)
    {
        ExportToExcel();
    }


    private void ExportToExcel()
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = " ";
        string FileName = "Career" + DateTime.Now + ".xls";
       
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite =new HtmlTextWriter(stringWrite);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gv5.GridLines = GridLines.Both;
        gv5.HeaderStyle.Font.Bold = true;
        
        gv5.RenderControl(htmlWrite);

        Response.Write(stringWrite.ToString());
        Response.End();

    }
    }






