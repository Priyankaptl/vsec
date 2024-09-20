using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_alumni_data : System.Web.UI.Page
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

   
    public void SelectCheckBox_OnCheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = sender as CheckBox;
        var senderProperty = sender.GetType().GetProperty("UniqueID");
        string s = senderProperty.GetValue(sender, null) as string ;
        var checkboxIdArray = s.Split('$');
        var checkboxId = Convert.ToInt32(checkboxIdArray[3].Replace("ctl", ""))-1;
        if (chk.Checked)
        {
            SqlCommand cmd = new SqlCommand(" update Alumni set Status= 1 where id=" + checkboxId + "", conn);

            conn.Open();
            int res = cmd.ExecuteNonQuery();
            conn.Close();
           
        }
        Response.Redirect("~/alumni.aspx");

    }

    
    private void Bind()
    {
        SqlCommand cmd = new SqlCommand("select * from Alumni ", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds, "Alumni");

        gv1.DataSource = ds;
        gv1.DataBind();
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
        TextBox name = (TextBox)row.FindControl("inputname");
        TextBox Dis = (TextBox)row.FindControl("inputDes");
        TextBox pass = (TextBox)row.FindControl("inputyear");

        FileUpload fu = (FileUpload)row.FindControl("fu1");

        if (fu.HasFile)
        {

            string file = System.IO.Path.Combine(Server.MapPath("Images/Alumni/"), fu.FileName);
            fu.SaveAs(file);

            SqlCommand cmd = new SqlCommand("update Alumni set Photo = '" + fu.FileName + "' where id=" + Convert.ToInt32(eid.Text) + "", conn);

            conn.Open();
            int res = cmd.ExecuteNonQuery();
            conn.Close();
        }

            SqlCommand cmd1 = new SqlCommand("update Alumni set Name = '" + name.Text + "',designation='"+ Dis.Text + "',PassingYear='"+ pass.Text + "' where id=" + Convert.ToInt32(eid.Text) + "", conn);

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

        SqlCommand cmd = new SqlCommand("delete from Alumni where id=" + Convert.ToInt32(eid.Text) + "", conn);
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





   


    protected void SelectCheck_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = sender as CheckBox;
        var senderProperty = sender.GetType().GetProperty("UniqueID");
        string s = senderProperty.GetValue(sender, null) as string ;
        var checkboxIdArray = s.Split('$') ;
        var checkboxId = Convert.ToInt32(checkboxIdArray[3].Replace("ctl", ""))-1;
        if (chk.Checked)
        {
            SqlCommand cmd = new SqlCommand(" update Alumni set Status= 0 where id=" + checkboxId  + "", conn);

            conn.Open();
            int res = cmd.ExecuteNonQuery();
            conn.Close();

        }
       
    }
}