using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;

public partial class Admin_Showallgallery : System.Web.UI.Page
{
    string tr, status;
    DBmanager dm = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            readPhoto_Gallery();
        }
    }

    private void readPhoto_Gallery()
    {
        //String RefId = Request.QueryString["SID"].ToString();
        dm.MyCmdText = ("select * from addgallery order by id desc");
        DataTable dt = dm.ReadBulkRecord();
        RpFeedBack.DataSource = dt;
        RpFeedBack.DataBind();
    }
    //[WebMethod]
    //public static void DeletePatient(string PId)
    //{
    //    DBmanager dm = new DBmanager();
    //    dm.MyCmdText = "Update Photo_Gallery set IsActive='" + 0 + "' WHERE S_No='" + PId + "'";
    //    dm.ExecuteIUD();
    //}
}

