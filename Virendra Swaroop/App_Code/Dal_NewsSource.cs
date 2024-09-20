using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Dal_NewsSource
/// </summary>
public class Dal_NewsSource
{
    Sql_Connection con_obj = new Sql_Connection();

    public int Insert(string source_name, string source_details, string insby)
    {
        string query = @"INSERT INTO CNF_NEWS_SOURCE (source_name,source_details,source_status,ins_by,ins_date) VALUES(@source_name,@source_details,@source_status,@ins_by,@ins_date)";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@source_name", source_name);
        cmd.Parameters.AddWithValue("@source_details", source_details);
        cmd.Parameters.AddWithValue("@source_status", 1);
        cmd.Parameters.AddWithValue("@ins_by", insby);
        cmd.Parameters.AddWithValue("@ins_date", DateTime.Now);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public DataTable Edit(string Id)
    {
        SqlCommand cmd = new SqlCommand("Select * from CNF_NEWS_SOURCE WHERE pk_cnf_newssource_id=@pk_cnf_newssource_id", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_newssource_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public int Update(string Id, string source_name, string source_details)
    {
        string query = @"UPDATE CNF_NEWS_SOURCE SET source_name=@source_name,source_details=@source_details WHERE pk_cnf_newssource_id=@pk_cnf_newssource_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@source_name", source_name);
        cmd.Parameters.AddWithValue("@source_details", source_details);
        cmd.Parameters.AddWithValue("@pk_cnf_newssource_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public int Active(string Id)
    {
        string query = @"UPDATE CNF_NEWS_SOURCE SET source_status=1 WHERE pk_cnf_newssource_id=@pk_cnf_newssource_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_newssource_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public int Block(string Id)
    {
        string query = @"UPDATE CNF_NEWS_SOURCE SET source_status=0 WHERE pk_cnf_newssource_id=@pk_cnf_newssource_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_newssource_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
}