using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Admin_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    DBmanager dm = new DBmanager();
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        string Username = username.Text;
        string Password = password.Text;

        i=0;
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = " select * from Admin_Login where Email= '" + Username + "' and Password='" + Password + "' ";

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);

        i = Convert.ToInt32(dt.Rows.Count.ToString());

        if (i==1)
        {
            //Response.Write("<script>alert('Login Successful')</script>");
            Response.Redirect("DashboadMain.aspx");
        }
            
        else
        {
            //l1.Text = "You have entered invalid Username or Password";
            Response.Write("<script>alert('Try Again!! Your Username or Password is incorrect...')</script>");
        }

        con.Close();
    }
}