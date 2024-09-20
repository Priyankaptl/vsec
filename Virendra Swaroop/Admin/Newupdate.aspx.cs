using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Newupdate : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select * from tbl_masterdata", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds, "tbl_masterdata");

        gv1.DataSource = ds;
        gv1.DataBind();
    }

    protected void btnSaveFile_Click(object sender, EventArgs e)
    {
        using (conn)
        {
            string newupdate = title.Text;


            conn.Open();
            SqlTransaction sqlTran = conn.BeginTransaction();
            SqlCommand cmd = conn.CreateCommand();
            cmd.Transaction = sqlTran;
            try
            {
          cmd.CommandText = @"Insert Into tbl_masterdata(Detalias,date) Values ('" + newupdate + "','"+ DateTime.Now.ToString() + "')";
                cmd.ExecuteNonQuery();
                sqlTran.Commit();

                lt_msg.Text = RishiMathod.Successmsg("Title Description Added Successfully !");
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

        
        SqlCommand cmd1 = new SqlCommand("update tbl_masterdata set Detalias = '" + name.Text + "'where id=" + Convert.ToInt32(eid.Text) + "", conn);

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

        SqlCommand cmd = new SqlCommand("delete from tbl_masterdata  where id=" + Convert.ToInt32(eid.Text) + "", conn);
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




