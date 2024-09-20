using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Show_contact_data : System.Web.UI.Page
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

        string query = "delete from Contact where id = '" + id + "'";

        if (conn.ExecuteIUD(query))
        {
            Response.Redirect("~/Admin/Show-contact-data.aspx");
        }
        else
        {
            Response.Write("Try Again!");
        }
    }
}