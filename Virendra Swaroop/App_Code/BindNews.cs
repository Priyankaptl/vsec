using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for BindCategories
/// </summary>
public class BindNews
{
    Sql_Connection con_obj = new Sql_Connection();
    static string segmentId = string.Empty;
    public DataTable BindYogNews()
    {
        SqlCommand cmd = new SqlCommand("Select Top 2 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' and fk_cnf_segment_id='100' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }



    public DataTable BindYogNewsTitle()
    {
        SqlCommand cmd = new SqlCommand("Select * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' and fk_cnf_segment_id='100' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindAyurvedNewsTitle()
    {
        SqlCommand cmd = new SqlCommand("Select  * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' and fk_cnf_segment_id='101' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindAyurvedNews()
    {
        SqlCommand cmd = new SqlCommand("Select  top 2 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' and fk_cnf_segment_id='101' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindHomeyopathicNewsTitle()
    {
        SqlCommand cmd = new SqlCommand("Select   * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' and fk_cnf_segment_id='102' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindHomeyopathicNews()
    {
        SqlCommand cmd = new SqlCommand("Select  top 2 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' and fk_cnf_segment_id='102' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }

    public DataTable BindSakaratmakJeevan()
    {
        SqlCommand cmd = new SqlCommand("Select * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' and fk_cnf_segment_id='103' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }

    public DataTable BindSakaratmakNews()
    {
        SqlCommand cmd = new SqlCommand("Select * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' and fk_cnf_segment_id='104' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }


    //Gallery
    public DataTable BindSlideGalleryNews()
    {
        SqlCommand cmd = new SqlCommand("Select * from GALLERY_IMAGES where image_status=1 order by pk_nws_galleryimg_id desc ", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }














    // New & Media
    public DataTable BindSlideGalleryNewsMedia()
    {
        SqlCommand cmd = new SqlCommand("Select * from NEW_MEDIA where image_status=1 order by pk_nws_galleryimg_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    // Outdoor Activity
    public DataTable BindSlideGalleryNewOutDoor()
    {
        SqlCommand cmd = new SqlCommand("Select * from OUTDOOR_ACTITY where image_status=1 order by pk_nws_galleryimg_id desc ", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    // Equipment
    public DataTable BindSlideGalleryNewEQUIPMENT()
    {
        SqlCommand cmd = new SqlCommand("Select * from EQUIPMENT where image_status=1 order by pk_nws_galleryimg_id desc ", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    // Miscellaneous
    public DataTable BindSlideGalleryNewsMISCELLANEOUS_IMAGES()
    {
        SqlCommand cmd = new SqlCommand("Select * from MISCELLANEOUS_IMAGES where image_status=1 order by pk_nws_galleryimg_id desc ", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    // Cured Cases

    public DataTable BindSlideGalleryNewsCURED_IMAGES()
    {
        SqlCommand cmd = new SqlCommand("Select * from CURED_IMAGES where image_status=1 order by pk_nws_galleryimg_id desc ", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindGalleryNews()
    {
        SqlCommand cmd = new SqlCommand("Select Top 6 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='101'", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindGalleryNewsDetails(string fk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand("Select * from NWS_GALLERY_IMAGES where fk_nws_news_id=@fk_nws_news_id and image_status=1", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@fk_nws_news_id", fk_nws_news_id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }

    public DataTable BindGalleryImageDetails(string pk_nws_galleryimg_id)
    {
        SqlCommand cmd = new SqlCommand("Select * from NWS_GALLERY_IMAGES where pk_nws_galleryimg_id=@pk_nws_galleryimg_id and image_status=1", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_galleryimg_id", pk_nws_galleryimg_id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    
    public DataTable BindExtraGalleryNewsDetails()
    {
        SqlCommand cmd = new SqlCommand("Select Top 15 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='101' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }


    //Audios
    public DataTable BindTopTenAudioNews()
    {
        SqlCommand cmd = new SqlCommand("Select Top 10 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='103' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindAudioNewsDetails(string pk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand("Select *,Convert(Date,news_date,103) as newsdate from NWS_NEWS_MASTER where pk_nws_news_id=@pk_nws_news_id and news_status=1 and fk_cnf_mtype_id='103'", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", pk_nws_news_id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        segmentId = dt.Rows[0]["fk_cnf_segment_id"].ToString();
        return dt;
    }
    public DataTable BindExtraAudioNewsDetails(string pk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand("Select Top 10 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='103' and fk_cnf_segment_id='" + segmentId + "'  and pk_nws_news_id !='" + pk_nws_news_id + "'  order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }


    //Videos
    public DataTable BindTopVideo()
    {
        SqlCommand cmd = new SqlCommand("Select Top 5 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='102' order by NEWID() DESC", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }

    public DataTable BindVideoNewsDetails(string pk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand("Select *,Convert(Date,news_date,103) as newsdate from NWS_NEWS_MASTER where pk_nws_news_id=@pk_nws_news_id and news_status=1 and fk_cnf_mtype_id='102'", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", Convert.ToInt64(pk_nws_news_id));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        segmentId = dt.Rows[0]["fk_cnf_segment_id"].ToString();
        con_obj.DbClose();
        return dt;
    }

    public DataTable BindExtraVideoNewsDetails(string pk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand("Select Top 10 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='102' and fk_cnf_segment_id='" + segmentId + "' and pk_nws_news_id !='" + pk_nws_news_id + "'  order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }

    public DataTable BindExtraVideoDetails(string pk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand("Select Top 3 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='102' and  pk_nws_news_id !='" + pk_nws_news_id + "'  order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }



    //Text
    public DataTable BindTopTenTextNews()
    {
        SqlCommand cmd = new SqlCommand("Select Top 10 pk_nws_news_id,news_title,title_image from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindTextNewswithicon()
    {
        SqlCommand cmd = new SqlCommand("Select Top 5 pk_nws_news_id,news_title,title_image from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' ORDER BY NEWID()", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindText()
    {
        SqlCommand cmd = new SqlCommand("Select Top 3 * from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' ORDER BY NEWID()", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindSliderTextNews()
    {
        SqlCommand cmd = new SqlCommand("Select Top 4 pk_nws_news_id,news_title,title_image from NWS_NEWS_MASTER where news_status=1 and fk_cnf_mtype_id='100' order by pk_nws_news_id desc", con_obj.DbConnect());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindTextNewsDetails(string pk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand("Select *, CONVERT(VARCHAR(12), news_date, 107) as news_date from NWS_NEWS_MASTER where pk_nws_news_id=@pk_nws_news_id and news_status=1 and fk_cnf_mtype_id='100'", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", pk_nws_news_id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataTable BindTextNewsGalleryDetails(string pk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand("Select *, CONVERT(VARCHAR(12), news_date, 107) as news_date from NWS_NEWS_MASTER where pk_nws_news_id=@pk_nws_news_id and news_status=1 and fk_cnf_mtype_id='101'", con_obj.DbConnect());
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", pk_nws_news_id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }
    public DataSet BindTextNewsLink(string pk_nws_news_id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con_obj.DbConnect();
        cmd.CommandText = "getNewsByNewsId";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", pk_nws_news_id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        con_obj.DbClose();
        return ds;
    }

    public DataSet BindImages(string pk_nws_galleryimg_id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con_obj.DbConnect();
        cmd.CommandText = "getImageByImageId";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pk_nws_galleryimg_id", pk_nws_galleryimg_id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        con_obj.DbClose();
        return ds;
    }

    public DataSet BindRelatedNews(long pk_nws_news_id, string medId, string segId)
    {

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con_obj.DbConnect();
        cmd.CommandText = "GetExtraNews";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", pk_nws_news_id);
        cmd.Parameters.AddWithValue("@fk_cnf_mtype_id", medId);
        cmd.Parameters.AddWithValue("@fk_cnf_segment_id", segId);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds);
        con_obj.DbClose();
        return ds;
    }

    public DataTable BindSegmentName(long pk_nws_news_id)
    {

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con_obj.DbConnect();
        cmd.CommandText = "GetSegmentName";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pk_nws_news_id", pk_nws_news_id);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //  DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }

    public DataTable BindNewsBySegmentId(long segmentId)
    {

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con_obj.DbConnect();
        cmd.CommandText = "GetNewsBySegmetId";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@fk_cnf_segment_id", segmentId);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //  DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }

    public DataTable GetTopVedios(string segmentId, string medtypeId)
    {

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con_obj.DbConnect();
        cmd.CommandText = "GetTopVedios";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@segmentId", segmentId);
        cmd.Parameters.AddWithValue("@fk_cnf_mtype_id", medtypeId);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //  DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(dt);
        con_obj.DbClose();
        return dt;
    }


}