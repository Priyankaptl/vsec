using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Web.UI;
using System.Text.RegularExpressions;


/// <summary>
/// Summary description for RishiMathod
/// </summary>
public class RishiMathod
{
    public static void ShowModal(Page page, string modal)
    {
        string pop = @"$(function () { $('#" + modal + "').modal('show');});";
        //string popupScript = @"$('#" + modal + "').modal('hide');$('body').removeClass('modal-open');$('.modal-backdrop').remove();$('#" + modal + "').modal('show');";
        ScriptManager.RegisterStartupScript(page, page.GetType(), Guid.NewGuid().ToString(), pop, true);
    }
    public static void HideModal(Page page, string modal)
    {
        string popupScript = "$('#" + modal + "').modal('hide');$('body').removeClass('modal-open');$('.modal-backdrop').remove();";
        ScriptManager.RegisterStartupScript(page, page.GetType(), Guid.NewGuid().ToString(), popupScript, true);
    }

    public static string Successmsg(string msg)
    {
        string Message = @"<div class='success-messages'>
                            <div class='alert alert-success'>
                                <button type='button' class='close' data-dismiss='alert'>×</button><strong><i class='fa fa-check' style='color:green'></i></strong> <strong> Success ! </strong>" + msg + "</div></div>";
        return Message;
    }

    public static string Errormsg(string msg)
    {
        string Message = @"<div class='alert alert-warning alert-dismissable'>
                          <button type='button' class='close' data-dismiss='alert'>×</button>
                            <strong> Error ! </strong>" + msg + "</div>";
        return Message;
    }
    public static bool CheckMobileNumber(string number)
    {
        string strRegex = @"^([1-9]{1})([0-9]{9})$";
        Regex re = new Regex(strRegex);
        if (re.IsMatch(number))
            return (true);
        else
            return (false);

    }
    public static bool CheckEmail(string email)
    {
        string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
         @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
         @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
        Regex re = new Regex(strRegex);
        if (re.IsMatch(email))
            return (true);
        else
            return (false);
    }
    public static string GetIP4Address(Page page)
    {
        try
        {
            string IP4Address = String.Empty;
            if (page.IsPostBack)
            {
                foreach (IPAddress IPA in Dns.GetHostAddresses(page.Request.ServerVariables["REMOTE_ADDR"].ToString()))
                {
                    if (IPA.AddressFamily.ToString() == "InterNetwork")
                    {
                        IP4Address = IPA.ToString();
                        break;
                    }
                }

                if (IP4Address != String.Empty)
                {
                    return IP4Address;
                }

                foreach (IPAddress IPA in Dns.GetHostAddresses(Dns.GetHostName()))
                {
                    if (IPA.AddressFamily.ToString() == "InterNetwork")
                    {
                        IP4Address = IPA.ToString();
                        break;
                    }
                }
            }

            return IP4Address;
        }
        catch { return ""; }
    }
}