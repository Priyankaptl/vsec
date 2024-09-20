using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
/// <summary>
/// Summary description for SmsSender
/// </summary>
public class SmsSender
{
    string MyUserId,MyPassword,MySenderId,MyRoute,SmsType;
	public SmsSender()
	{
		//
		// TODO: Add constructor logic here
		//
        MySenderId = "DRRAVI";
        MyUserId = "ravibhaskar1";
        MyPassword = "ravibhaskar1";
        SmsType = "Trans";
        MyRoute = "15";
	}
     public bool SendMySMS(string MobNo,string Message)
     {
    try{
        string APIUrl = "http://pro.hrcs.in/api/mt/SendSMS?user=" + MyUserId + "&password=" + MyPassword + "&senderid=" + MySenderId + "&channel=" + SmsType + "&DCS=0&flashsms=0&number=91" + MobNo + "&text=" + Message + "&route=" + MyRoute;
        WebClient wc = new WebClient();
        string result = wc.DownloadString(APIUrl);
        return true;
      }
    catch(Exception ex)
    {
        return false;
    }
}
}