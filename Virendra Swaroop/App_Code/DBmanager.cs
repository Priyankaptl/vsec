using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

/// <summary>
/// Summary description for DBmanager
/// </summary>
public class DBmanager
{
    SqlConnection con;
    public SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    public string MyCmdText { get; set; }
    public SqlCommand sp_cmd { get; set; }
    public DBmanager()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
        cmd = new SqlCommand();
        da = new SqlDataAdapter(); 
         dt = new DataTable();
        sp_cmd = new SqlCommand();
        cmd.Connection = con;
        sp_cmd.Connection = con;
    }

    public void OpenDB()
    {
        if (con.State == ConnectionState.Closed)
            con.Open();
    }
    public void CloseDB()
    {
        if (con.State == ConnectionState.Open)
            con.Close();
    }
    public bool ExecuteStoredProcedure()
    {
        try
        {
            sp_cmd.CommandType = CommandType.StoredProcedure;
            OpenDB();
            sp_cmd.ExecuteNonQuery();
            CloseDB();
            sp_cmd.Dispose();
            return true;
        }
        catch (Exception)
        {
            return false;
        }
    }

    public DataTable ReadDataFromStoredProc()
    {
        try
        {
            sp_cmd.CommandType = CommandType.StoredProcedure;
            OpenDB();

            DataTable dt = new DataTable();
            dt.Load(sp_cmd.ExecuteReader());

            CloseDB();
            sp_cmd.Dispose();
            return dt;
        }
        catch (Exception ex)
        {
            DataTable dtNew = new DataTable();
            dtNew.Columns.Add("Error");
            DataRow dr = dtNew.NewRow();
            dr["Error"] = ex.Message.ToString();
            dtNew.Rows.Add(dr);
            return dtNew;
        }
    }

    public DataSet ReadDataSetFromStoredProc()
    {
        try
        {
            sp_cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(sp_cmd);

            OpenDB();

            DataSet ds = new DataSet();
            da.Fill(ds);

            CloseDB();
            sp_cmd.Dispose();
            return ds;
        }
        catch (Exception ex)
        {
            DataTable dtNew = new DataTable();
            dtNew.Columns.Add("Error");
            DataRow dr = dtNew.NewRow();
            dr["Error"] = ex.Message.ToString();
            dt.Rows.Add(dr);
            DataSet ds = new DataSet();
            ds.Tables.Add(dtNew);
            return ds;
        }
    }

    public bool ExecuteInsertUpdateOrDelete()
    {
        try
        {
            cmd.CommandText = MyCmdText;
            OpenDB();

            int n = cmd.ExecuteNonQuery();
            CloseDB();
            cmd.Dispose();
            return n > 0 ? true : false;
        }
        catch (Exception ex)
        {           
           return false;
        }

    }

    public object ReadSingleValue()
    {
        try
        {
            cmd.CommandText = MyCmdText;
            OpenDB();

            object ob = cmd.ExecuteScalar();
            CloseDB();
            cmd.Dispose();
            return ob;
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }

    public DataTable ReadBulkRecord()
    {
        try
        {
            dt = new DataTable();
            cmd.CommandText = MyCmdText;
            da.SelectCommand = cmd;
            da.Fill(dt);

            cmd.Dispose();
            da.Dispose();

            return dt;
        }
        catch (Exception ex)
        {
            DataTable dtNew = new DataTable();
            dtNew.Columns.Add("Error");
            DataRow dr = dtNew.NewRow();
            dr["Error"] = ex.Message.ToString();
            dtNew.Rows.Add(dr);
            return dtNew;
        }
    }

    public DataTable ExecuteSelect(string Query)
    {
        try
        {
            cmd.CommandText = Query;
            dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            DataTable dtNew = new DataTable();
            dtNew.Columns.Add("Error");
            DataRow dr = dtNew.NewRow();
            dr["Error"] = ex.Message.ToString();
            dtNew.Rows.Add(dr);
            return dtNew;
        }
    }
 }