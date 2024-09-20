using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for dbconnection
/// </summary>
public class dbconnection
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);

    public bool ExecuteIUD(string query)
    {
        SqlCommand cmd = new SqlCommand(query, con);

        int x = 0;
        try
        {
            con.Open();
            x = cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            x = 0;
        }
        finally
        {
            con.Close();
        }

        if (x > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public DataTable ExecuteSelect(string query)
    {
        DataTable dt = new DataTable();

        try
        {
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.Fill(dt);
        }
        catch (Exception ex)
        {

        }

        return dt;

    }
}