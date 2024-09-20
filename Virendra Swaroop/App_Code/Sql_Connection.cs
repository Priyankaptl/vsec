using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for Sql_Connection
/// </summary>
public class Sql_Connection
{
    static string dbstring = ConfigurationManager.ConnectionStrings["prd"].ConnectionString;
    SqlConnection con = new SqlConnection(dbstring);
    SqlTransaction sqlTran;
    public SqlConnection DbConnect()
    {     
        con.Open();
       
        return con;
    }
    public SqlConnection DbClose()
    {
        con.Close();
        return con;
    }
    public SqlConnection transtart()
    {
        con.Open();
        sqlTran = con.BeginTransaction();
        return con;
    }
    public SqlConnection transcommit()
    {
        sqlTran.Commit();
        con.Close();
        return con;
    }
}