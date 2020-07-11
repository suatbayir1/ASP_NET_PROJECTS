using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Talep
{
    public partial class kullanıcıMesajGoster : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();
       
       
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_mID.Text = Request.QueryString["m_ID"].ToString();
            lbl_mID.Visible = false;
            lbl_kID.Visible = false;
            lbl_kID.Text = Session["k_ID"].ToString();
            SqlCommand cmd = new SqlCommand("select *from mesaj where m_ID=@p1", con.con());
            cmd.Parameters.AddWithValue("@p1", lbl_mID.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txt_mesajGonderen.Text = dr["m_GonderenID"].ToString();
                txt_mesajBaslik.Text = dr["m_Baslik"].ToString();
                txt_mesajIcerik.Text = dr["m_Icerik"].ToString();
            }
        }

        protected void btn_tamam_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update  kullanici set mesajsayisi=mesajsayisi-1 where k_ID='"+lbl_kID.Text+"'",con.con());
            cmd.ExecuteNonQuery();
          

            SqlCommand cmd2 = new SqlCommand("update mesaj set m_Okunma=1 where m_ID=@p1", con.con());
            cmd2.Parameters.AddWithValue("@p1", lbl_mID.Text);
            cmd2.ExecuteNonQuery();
            Response.Redirect("kullanıcıGelenMesajlar.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıAnasayfa.aspx");
        }
    }
}