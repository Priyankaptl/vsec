using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public SqlConnection con = new SqlConnection();
    public SqlCommand cm = new SqlCommand();
    public SqlDataAdapter adp = new SqlDataAdapter();
    public DataSetPatient ds1 = new DataSetPatient();
    public DataSet ds = new DataSet();
    public DataSetOnlyId ds2 = new DataSetOnlyId();
    public DataSetBill ds3 = new DataSetBill();
    public DataSetP_Pres ds4 = new DataSetP_Pres();
    public DataSetBill_Report ds5 = new DataSetBill_Report();

    public Class1()
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        con.Open();
        cm.Connection = con;
        //
        // TODO: Add constructor logic here
        //
    }
    public string autoid(string text, string table, string column)
    {

        int n;
        cm.CommandText = "select max(Convert(int,substring(" + column + "," + Convert.ToInt32(text.Length + 1) + ",len(" + column + ")))) from " + table;
        if (cm.ExecuteScalar() == DBNull.Value)
        {
            n = 00001;
        }
        else
        {
            n = Convert.ToInt32(cm.ExecuteScalar());
            n = n + 1;
        }
        con.Close();
        return (text + n);
    }

    public DataTable sp_select_prescription(System.Collections.ArrayList arr)
    {
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        cm = new SqlCommand("sp_select_prescription", con);
        cm.CommandType = CommandType.StoredProcedure;
        cm.Parameters.AddWithValue("@PatientID", arr[0].ToString());
        cm.Parameters.AddWithValue("@Mode", arr[1].ToString());
        adp = new SqlDataAdapter(cm);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        con.Close();
        return dt;
    }

    public bool sp_delete_prescription(System.Collections.ArrayList arr)
    {

        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }


        try
        {

            cm = new SqlCommand("sp_delete_prescription", con);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.Add("@PatientID", arr[0].ToString());

            cm.ExecuteNonQuery();

            return true;
            //message("Data added Successfully")

        }
        catch (Exception ex)
        {
            return false;
            //message(ex.Message)
        }
        finally
        {
            con.Close();
        }
    }
}