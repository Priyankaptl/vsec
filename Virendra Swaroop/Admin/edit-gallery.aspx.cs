using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;

public partial class Admin_edit_gallery : System.Web.UI.Page
{
    
    DBmanager dm = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            readPhoto_Gallery();
        }
        else { 
            
        }
        //if (Session["Uid"] != null)
        //{
        //    if (IsPostBack == false)
        //    {
        //        readPhoto_Gallery();
        //    }
        //}
        //else
        //{
        //    Response.Redirect("login.aspx");
        //}

    }
    private void readPhoto_Gallery()
    {
        //String RefId = Request.QueryString["SID"].ToString();
        dm.MyCmdText = ("select * from addgallery  order by id desc");
        DataTable dt = dm.ReadBulkRecord();
        RpFeedBack.DataSource = dt;
        RpFeedBack.DataBind();
    }
    //[WebMethod]
    //public static void DeletePatient(string PId)
    //{
    //    DBmanager dm = new DBmanager();
    //    dm.MyCmdText = "Update Photo_Gallery set IsActive='" + 0 + "' WHERE S_No='" + PId + "'";
    //    dm.ExecuteInsertUpdateOrDelete();
    //}
}