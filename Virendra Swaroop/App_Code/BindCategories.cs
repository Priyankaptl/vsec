using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for BindCategories
/// </summary>
public class BindCategories
{
    Sql_Connection con_obj = new Sql_Connection(); 

    public DataTable MediaType()
    {
        SqlCommand cmd = new SqlCommand("Select * from CNF_MEDIA_TYPE", con_obj.DbConnect());        
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindSegment()
    {
        SqlCommand cmd = new SqlCommand("Select * from CNF_SEGMENT_MASTER", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindSubSegment()
    {
        SqlCommand cmd = new SqlCommand("Select *,(SELECT segment_name FROM CNF_SEGMENT_MASTER WHERE pk_cnf_segment_id=a.fk_cnf_segment_id) as segment from CNF_SUBSEGMENT_MASTER a order by fk_cnf_segment_id", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindNewsSource()
    {
        SqlCommand cmd = new SqlCommand("Select * from CNF_NEWS_SOURCE", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    /// <summary>
    /// Active Binding
    /// </summary>
    /// <returns></returns>
    //public DataTable BindActiveMediaType()
    //{
    //    SqlCommand cmd = new SqlCommand("Select * from CNF_MEDIA_TYPE where type_status=1", con_obj.DbConnect());
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    con_obj.DbClose();
    //    return dt;
    //}
    //public DataTable BindActiveSegment()
    //{
    //    //SqlCommand cmd = new SqlCommand("Select * from CNF_SEGMENT_MASTER where segment_status=1", con_obj.DbConnect());
    //    //SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    //DataTable dt = new DataTable();
    //    //da.Fill(dt);
    //    //con_obj.DbClose();
    //    //return dt;
    //}
    //public DataTable BindActiveNewsSource()
    //{
    //    SqlCommand cmd = new SqlCommand("Select * from CNF_NEWS_SOURCE where source_status=1", con_obj.DbConnect());
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    con_obj.DbClose();
    //    return dt;
    //}

    public DataTable BindActivesubsegment()
    {
        SqlCommand cmd = new SqlCommand("Select * from CNF_SUBSEGMENT_MASTER where subsegment_status=1", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }


    /// <summary>
    /// Active Binding With Pk-Id
    /// </summary>
    /// <returns></returns>
    /// 
    public DataTable Bind_ddl_SubSegment(string id)
    {
        SqlCommand cmd = new SqlCommand("Select * from CNF_SUBSEGMENT_MASTER where fk_cnf_segment_id='" + id + "' and subsegment_status=1", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
}