using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_career_form_data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void editbtn_Click(object sender, EventArgs e)
    {

    }
    protected void deletebtn_Click(object sender, EventArgs e)
    {
        LinkButton btn1 = (LinkButton)sender;
        string id = btn1.CommandArgument;

        dbconnection conn = new dbconnection();

        string query = "delete from career where id = '" + id + "'";

        if (conn.ExecuteIUD(query))
        {
            Response.Redirect("~/Admin/career_form_data.aspx");
        }
        else
        {
            Response.Write("Try Again!");
        }
    }
}