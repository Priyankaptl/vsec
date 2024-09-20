using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Dal_MediaType
/// </summary>
public class Dal_MediaType
{
    Sql_Connection con_obj = new Sql_Connection();
    public DataTable Edit(string Id)
    {
        SqlCommand cmd = new SqlCommand("Select * from CNF_MEDIA_TYPE WHERE pk_cnf_mtype_id=@pk_cnf_mtype_id", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_mtype_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public int Update(string Id, string type_name)
    {
        string query = @"UPDATE CNF_MEDIA_TYPE SET type_name=@type_name WHERE pk_cnf_mtype_id=@pk_cnf_mtype_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@type_name", type_name);       
        cmd.Parameters.AddWithValue("@pk_cnf_mtype_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public int Active(string Id)
    {
        string query = @"UPDATE CNF_MEDIA_TYPE SET type_status=1 WHERE pk_cnf_mtype_id=@pk_cnf_mtype_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_mtype_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public int Block(string Id)
    {
        string query = @"UPDATE CNF_MEDIA_TYPE SET type_status=0 WHERE pk_cnf_mtype_id=@pk_cnf_mtype_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_mtype_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
}