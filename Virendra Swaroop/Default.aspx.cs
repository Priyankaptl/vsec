using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.Sql;
using System.Activities.Expressions;
using System.Security.Cryptography;

public partial class _Default : System.Web.UI.Page
{
    //static string dbstring = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    
    
    {
        if (!IsPostBack)
        {
            readNoticeBoard();
            achievementmain();
            achievphoto();
            SpecialMoments();
            Gallery();
            newsupdats();

        }
    }

    private void achievementmain()
    {
        db.MyCmdText = "SELECT * FROM Events ORDER BY Id DESC";
        DataTable dtDetails = db.ReadBulkRecord();
        achievement1.DataSource = dtDetails;
        achievement1.DataBind();
    }

    private void readNoticeBoard()
    {
        db.MyCmdText = "SELECT * FROM InterHouseCompetition ORDER BY Id DESC";
        DataTable dtDetails = db.ReadBulkRecord();
        RPNoticeBoard.DataSource = dtDetails;
        RPNoticeBoard.DataBind();
    }

    private void achievphoto()
    {
        db.MyCmdText = "SELECT TOP 2 * FROM tbl_profile ORDER BY Id DESC";
        DataTable dtDetails = db.ReadBulkRecord();
        achievement2.DataSource = dtDetails;
        achievement2.DataBind();
    }

    private void SpecialMoments()
    
    {
        db.MyCmdText = "SELECT TOP 4 * FROM tbl_SpecialMoments ORDER BY id DESC";
        //db.MyCmdText = "SELECT * FROM tbl_SpecialMoments ORDER BY Id DESC";
        DataTable dtDetails = db.ReadBulkRecord();
        Summer1.DataSource = dtDetails;
        Summer1.DataBind();
    }



    private void Gallery()
    {
        db.MyCmdText = "SELECT TOP 6 * FROM tbl_Defultmaster ORDER BY Id DESC";
        DataTable dtDetails = db.ReadBulkRecord();
        Repeater1.DataSource = dtDetails;
        Repeater1.DataBind();
    }


    private void newsupdats()
    {
      
        db.MyCmdText = "SELECT TOP 1 * FROM tbl_masterdata ORDER BY id DESC";
        DataTable dtDetails = db.ReadBulkRecord();
        Repeater2.DataSource = dtDetails;
        Repeater2.DataBind();
    }
}


