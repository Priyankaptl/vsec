using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Activities.Statements;
using System.Configuration;
/// <summary>
/// Summary description for Dal_PostNews
/// </summary>
public class Dal_PostNews
{
    Sql_Connection con_obj = new Sql_Connection();   
    //public int Insert(Bal_PostNews bal)
    //{
    //    SqlCommand cmd = new SqlCommand("SP_ADDNEWS", con_obj.DbConnect());
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@news_date", bal.news_date);
    //    cmd.Parameters.AddWithValue("@news_time", bal.news_time);
    //    cmd.Parameters.AddWithValue("@fk_cnf_segment_id", bal.fk_cnf_segment_id);
    //    cmd.Parameters.AddWithValue("@fk_cnf_subsegment_id", bal.fk_cnf_subsegment_id);
    //    cmd.Parameters.AddWithValue("@fk_cnf_mtype_id", bal.fk_cnf_mtype_id);
    //    cmd.Parameters.AddWithValue("@fk_cnf_newssource_id", bal.fk_cnf_newssource_id);
    //    cmd.Parameters.AddWithValue("@news_title", bal.news_title);
    //    cmd.Parameters.AddWithValue("@title_image", bal.title_image);
    //    cmd.Parameters.AddWithValue("@detailed_text", bal.detailed_text);
    //    cmd.Parameters.AddWithValue("@video_url", bal.video_url);
    //    cmd.Parameters.AddWithValue("@video_detail", bal.video_detail);
    //    cmd.Parameters.AddWithValue("@audio_path", bal.audio_path);
    //    cmd.Parameters.AddWithValue("@audio_detail", bal.audio_detail);
    //    cmd.Parameters.AddWithValue("@news_by", bal.news_by);
    //    cmd.Parameters.AddWithValue("@news_status", 1);
    //    cmd.Parameters.AddWithValue("@ins_by", bal.ins_by);
    //    cmd.Parameters.AddWithValue("@ins_date", DateTime.Now);
    //    int a = cmd.ExecuteNonQuery();
    //    con_obj.DbClose();
    //    return a;
    //}
    public int GalleryInsert( string image_title, string image_description, string image_path)
    {
        string Query = @"Insert Into GALLERY_IMAGES (image_title,image_description,image_path,image_status) Values (@image_title,@image_description,@image_path,@image_status)";
        SqlCommand cmd = new SqlCommand(Query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
      //  cmd.Parameters.AddWithValue("@fk_nws_news_id", fk_nws_news_id);
        cmd.Parameters.AddWithValue("@image_title", image_title);
        cmd.Parameters.AddWithValue("@image_description", image_description);
        cmd.Parameters.AddWithValue("@image_path", image_path);
        cmd.Parameters.AddWithValue("@image_status", 1);
     //   cmd.Parameters.AddWithValue("@ins_by", ins_by);
     //   cmd.Parameters.AddWithValue("@ins_date", DateTime.Now.ToString());
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();     
        return a;
    }




    public int CuredInsert(string image_title, string image_description, string image_path)
    {
        string Query = @"Insert Into CURED_IMAGES (image_title,image_description,image_path,image_status) Values (@image_title,@image_description,@image_path,@image_status)";
        SqlCommand cmd = new SqlCommand(Query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //  cmd.Parameters.AddWithValue("@fk_nws_news_id", fk_nws_news_id);
        cmd.Parameters.AddWithValue("@image_title", image_title);
        cmd.Parameters.AddWithValue("@image_description", image_description);
        cmd.Parameters.AddWithValue("@image_path", image_path);
        cmd.Parameters.AddWithValue("@image_status", 1);
        //   cmd.Parameters.AddWithValue("@ins_by", ins_by);
        //   cmd.Parameters.AddWithValue("@ins_date", DateTime.Now.ToString());
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }











    public int MiscellaneousInsert(string image_title, string image_description, string image_path)
    {
        string Query = @"Insert Into MISCELLANEOUS_IMAGES (image_title,image_description,image_path,image_status) Values (@image_title,@image_description,@image_path,@image_status)";
        SqlCommand cmd = new SqlCommand(Query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //  cmd.Parameters.AddWithValue("@fk_nws_news_id", fk_nws_news_id);
        cmd.Parameters.AddWithValue("@image_title", image_title);
        cmd.Parameters.AddWithValue("@image_description", image_description);
        cmd.Parameters.AddWithValue("@image_path", image_path);
        cmd.Parameters.AddWithValue("@image_status", 1);
        //   cmd.Parameters.AddWithValue("@ins_by", ins_by);
        //   cmd.Parameters.AddWithValue("@ins_date", DateTime.Now.ToString());
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }













    public int EqipmentInsert(string image_title, string image_description, string image_path)
    {
        string Query = @"Insert Into EQUIPMENT (image_title,image_description,image_path,image_status) Values (@image_title,@image_description,@image_path,@image_status)";
        SqlCommand cmd = new SqlCommand(Query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //  cmd.Parameters.AddWithValue("@fk_nws_news_id", fk_nws_news_id);
        cmd.Parameters.AddWithValue("@image_title", image_title);
        cmd.Parameters.AddWithValue("@image_description", image_description);
        cmd.Parameters.AddWithValue("@image_path", image_path);
        cmd.Parameters.AddWithValue("@image_status", 1);
        //   cmd.Parameters.AddWithValue("@ins_by", ins_by);
        //   cmd.Parameters.AddWithValue("@ins_date", DateTime.Now.ToString());
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }


    public int OutDoorInsert(string image_title, string image_description, string image_path)
    {
        string Query = @"Insert Into OUTDOOR_ACTITY (image_title,image_description,image_path,image_status) Values (@image_title,@image_description,@image_path,@image_status)";
        SqlCommand cmd = new SqlCommand(Query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //  cmd.Parameters.AddWithValue("@fk_nws_news_id", fk_nws_news_id);
        cmd.Parameters.AddWithValue("@image_title", image_title);
        cmd.Parameters.AddWithValue("@image_description", image_description);
        cmd.Parameters.AddWithValue("@image_path", image_path);
        cmd.Parameters.AddWithValue("@image_status", 1);
        //   cmd.Parameters.AddWithValue("@ins_by", ins_by);
        //   cmd.Parameters.AddWithValue("@ins_date", DateTime.Now.ToString());
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }











    public int NewsMediaInsert(string image_title, string image_description, string image_path)
    {
        string Query = @"Insert Into NEW_MEDIA (image_title,image_description,image_path,image_status) Values (@image_title,@image_description,@image_path,@image_status)";
        SqlCommand cmd = new SqlCommand(Query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //  cmd.Parameters.AddWithValue("@fk_nws_news_id", fk_nws_news_id);
        cmd.Parameters.AddWithValue("@image_title", image_title);
        cmd.Parameters.AddWithValue("@image_description", image_description);
        cmd.Parameters.AddWithValue("@image_path", image_path);
        cmd.Parameters.AddWithValue("@image_status", 1);
        //   cmd.Parameters.AddWithValue("@ins_by", ins_by);
        //   cmd.Parameters.AddWithValue("@ins_date", DateTime.Now.ToString());
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }


    public DataTable ManageNews(string from,string to,string segment,string subsegment,string mediatype)
    {  
        string query = @"SELECT *, Convert(nvarchar,news_date,103) + ' | '+ Convert(nvarchar,news_time)as NewsDatetime, 
                       (Select segment_name from CNF_SEGMENT_MASTER where pk_cnf_segment_id=a.fk_cnf_segment_id) as Segment,
                       (Select subsegment_name from CNF_SUBSEGMENT_MASTER where pk_cnf_subsegment_id =a.fk_cnf_subsegment_id) as Subsegment 
                        FROM NWS_NEWS_MASTER a ";
        if (from != "" && to != "")
        {
            query += " where CONVERT(date,news_date,103)>=Convert(date,'" + from + "',103) AND  CONVERT(date,news_date,103)<=Convert(date,'" + to + "',103)";
        }
        if (segment != "0")
        {
            query += " AND fk_cnf_segment_id='"+segment+"'";
        }
        if (subsegment != "0" && subsegment != "")
        {
            query += " AND fk_cnf_subsegment_id='"+subsegment+"'";
        }
        if (mediatype != "0")
        {
            query += " AND fk_cnf_mtype_id='"+mediatype+"'";
        }
        query += " order by CONVERT(date,news_date,103) asc";

        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);       
        return dt; 
    }
    public int Active(string Id)
    {
        string query = @"UPDATE NWS_NEWS_MASTER SET news_status=1 WHERE pk_nws_news_id=@pk_nws_news_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public int Block(string Id)
    {
        string query = @"UPDATE NWS_NEWS_MASTER SET news_status=0 WHERE pk_nws_news_id=@pk_nws_news_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }
    public DataTable FindMediatype(string Id)
    {
        SqlCommand cmd = new SqlCommand("Select fk_cnf_mtype_id from NWS_NEWS_MASTER where pk_nws_news_id=@pk_nws_news_id ", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable EditNews(string Id)
    {
        SqlCommand cmd = new SqlCommand("Select * from NWS_NEWS_MASTER where pk_nws_news_id=@pk_nws_news_id ", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindGalleryImage()
    {
        SqlCommand cmd = new SqlCommand("Select * from GALLERY_IMAGES where image_status=1 ", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //   cmd.Parameters.AddWithValue("@fk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }



  

    public DataTable BindCuredImage()
    {
        SqlCommand cmd = new SqlCommand("Select * from CURED_IMAGES where image_status=1 ", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //   cmd.Parameters.AddWithValue("@fk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }













    public DataTable BindMiscellaneousImage()
    {
        SqlCommand cmd = new SqlCommand("Select * from MISCELLANEOUS_IMAGES where image_status=1 ", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //   cmd.Parameters.AddWithValue("@fk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }











    public DataTable BindEqipmentImage()
    {
        SqlCommand cmd = new SqlCommand("Select * from EQUIPMENT where image_status=1 ", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //   cmd.Parameters.AddWithValue("@fk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }





    public DataTable BindOutDoorImage()
    {
        SqlCommand cmd = new SqlCommand("Select * from OUTDOOR_ACTITY where image_status=1 ", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //   cmd.Parameters.AddWithValue("@fk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }








    public DataTable BindNewsMedia()
    {
        SqlCommand cmd = new SqlCommand("Select * from NEW_MEDIA where image_status=1 ", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        //   cmd.Parameters.AddWithValue("@fk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public int BlockGalleryImage(string Id)
    {
        string query = @"UPDATE GALLERY_IMAGES SET image_status=0 WHERE pk_nws_galleryimg_id=@pk_nws_galleryimg_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_galleryimg_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }

   
  

    public int BlockCuredImage(string Id)
    {
        string query = @"UPDATE CURED_IMAGES SET image_status=0 WHERE pk_nws_galleryimg_id=@pk_nws_galleryimg_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_galleryimg_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }












    public int BlockMiscellaneousImage(string Id)
    {
        string query = @"UPDATE MISCELLANEOUS_IMAGES SET image_status=0 WHERE pk_nws_galleryimg_id=@pk_nws_galleryimg_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_galleryimg_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }










    public int BlockEqipmentyImage(string Id)
    {
        string query = @"UPDATE EQUIPMENT SET image_status=0 WHERE pk_nws_galleryimg_id=@pk_nws_galleryimg_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_galleryimg_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }



    public int BlockOutDoorImage(string Id)
    {
        string query = @"UPDATE OUTDOOR_ACTITY SET image_status=0 WHERE pk_nws_galleryimg_id=@pk_nws_galleryimg_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_galleryimg_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }













    public int BlockNewMediaImage(string Id)
    {
        string query = @"UPDATE NEW_MEDIA SET image_status=0 WHERE pk_nws_galleryimg_id=@pk_nws_galleryimg_id";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_galleryimg_id", Id);
        int a = cmd.ExecuteNonQuery();
        con_obj.DbClose();
        return a;
    }

    public DataTable ViewNews(string Id)
    {
        string query = @"Select *, 
                        (SELECT segment_name FROM CNF_SEGMENT_MASTER WHERE pk_cnf_segment_id=a.fk_cnf_segment_id) as segment,
                        (SELECT subsegment_name FROM CNF_SUBSEGMENT_MASTER WHERE pk_cnf_subsegment_id=a.fk_cnf_subsegment_id) as subsegment,
                        (SELECT source_name FROM CNF_NEWS_SOURCE WHERE pk_cnf_newssource_id=a.fk_cnf_newssource_id) as source                        
                        from NWS_NEWS_MASTER a where pk_nws_news_id=@pk_nws_news_id ";
        SqlCommand cmd = new SqlCommand(query, con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
}


   