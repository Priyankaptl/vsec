using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PaymentData
/// </summary>
public class PaymentData
{
	public PaymentData()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string MID { get; set; }
    public string Key { get; set; }
    public string TransID { get; set; }
    public int BookingID { get; set; }
    public string SlotDate { get; set; }
    public string SlotTime { get; set; }
    public string Amount { get; set; }
    public string TransType { get; set; }
    public string TrnCurrency { get; set; }
    public string PatientName { get; set; }
    public string Age { get; set; }
    public string Gender { get; set; }
    public string City { get; set; }
    public string MobileNo { get; set; }
    public string EmailId { get; set; }
    public string Occupation { get; set; }
    public string Description { get; set; }
    public string FileName { get; set; }
    public string Status { get; set; }
    public string PaymentDate { get; set; }
    public string TrnRRN { get; set; }
    public string SlotId { get; set; }
}