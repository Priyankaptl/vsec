using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class photo_gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
            dbconnection db = new dbconnection();
            string cmd = "select * from addgallery order by id desc";
            DataTable dt = new DataTable();
            dt = db.ExecuteSelect(cmd);
            datalist1.DataSource = dt;
            datalist1.DataBind();
        }
    }
