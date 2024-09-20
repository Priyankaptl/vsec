using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Segment
/// </summary>
public class Dal_Segment
{
    Sql_Connection con_obj = new Sql_Connection();
   
    public int Insert(string segment, string icon, string insby)
    {
        string query = @"INSERT INTO CNF_SEGMENT_MASTER (segment_name,segment_icon,segment_status,ins_by,ins_date) VALUES(@segment_name,@segment_icon,@segment_status,@ins_by,@ins_date)";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@segment_name", segment);
        cmd.Parameters.AddWithValue("@segment_icon", icon);
        cmd.Parameters.AddWithValue("@segment_status", 1);
        cmd.Parameters.AddWithValue("@ins_by", insby);
        cmd.Parameters.AddWithValue("@ins_date", DateTime.Now);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public DataTable Edit(string Id)
    {
        SqlCommand cmd = new SqlCommand("Select * from CNF_SEGMENT_MASTER WHERE pk_cnf_segment_id=@pk_cnf_segment_id", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_segment_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public int Update(string Id, string segment, string icon)
    {
        string query = @"UPDATE CNF_SEGMENT_MASTER SET segment_name=@segment_name,segment_icon=@segment_icon WHERE pk_cnf_segment_id=@pk_cnf_segment_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@segment_name", segment);
        cmd.Parameters.AddWithValue("@segment_icon", icon);
        cmd.Parameters.AddWithValue("@pk_cnf_segment_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public int Active(string Id)
    {
        string query = @"UPDATE CNF_SEGMENT_MASTER SET segment_status=1 WHERE pk_cnf_segment_id=@pk_cnf_segment_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_segment_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public int Block(string Id)
    {
        string query = @"UPDATE CNF_SEGMENT_MASTER SET segment_status=0 WHERE pk_cnf_segment_id=@pk_cnf_segment_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_cnf_segment_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
}