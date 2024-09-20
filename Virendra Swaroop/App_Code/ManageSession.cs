using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ManageSession
{
    public ManageSession()
    {

    }
    public string UserId
    {
        get
        {
            return HttpContext.Current.Session["User"] == null ?
                null : HttpContext.Current.Session["User"].ToString();
        }
        set
        {
            HttpContext.Current.Session["User"] = value;
            HttpContext.Current.Session.Timeout = 120;
        }
    }
    public string Admin
    {
        get
        {
            return HttpContext.Current.Session["Admin"] == null ?
                null : HttpContext.Current.Session["Admin"].ToString();
        }
        set
        {
            HttpContext.Current.Session["Admin"] = value;
            HttpContext.Current.Session.Timeout = 120;
        }
    }
    public Object SessionMain
    {
        get
        {
            return HttpContext.Current.Session["MasterUser"] == null ?
                null : HttpContext.Current.Session["MasterUser"];
        }
        set
        {
            HttpContext.Current.Session["MasterUser"] = value;
            HttpContext.Current.Session.Timeout = 120;

        }
    }
}