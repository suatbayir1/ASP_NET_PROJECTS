using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;

namespace Talep
{
    public partial class talepGoster : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();
        string t_ID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            lbl_adminID.Visible = false;
            t_ID = Request.QueryString["t_ID"];
            SqlCommand cmd = new SqlCommand("select t_GonderenID,t_Baslik,t_GelenTarih,t_Icerik,t_Cevap,DosyaYol from talep left join dosyalar on talep.t_ID=dosyalar.t_ID where talep.t_ID=@p1", con.con());
            cmd.Parameters.AddWithValue("@p1", t_ID);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                txt_TalepGonderen.Text = dr["t_GonderenID"].ToString();
                txt_Baslik.Text = dr["t_Baslik"].ToString();
                txt_GelisTarihi.Text = dr["t_GelenTarih"].ToString();
                txt_Icerik.Text = dr["t_Icerik"].ToString();
                txt_TalepCevap.Text = dr["t_Cevap"].ToString();
                txt_dosya.Text = dr["DosyaYol"].ToString();
            }

            SqlCommand cmd3 = new SqlCommand("select *from kullanici where k_ID=@l1", con.con());
            cmd3.Parameters.AddWithValue("@l1", txt_TalepGonderen.Text);
            SqlDataReader dr3 = cmd3.ExecuteReader();

            while (dr3.Read())
            {
                txt_GonderenAd.Text+= dr3["k_Ad"].ToString();
                txt_GonderenAd.Text += " ";
                txt_GonderenAd.Text += dr3["k_Soyad"].ToString();
            }
}

        protected void btn_Cevapla_Click(object sender, EventArgs e)
        {
            lbl_adminID.Text = Session["adminID"].ToString();
            if (CheckBox1.Checked)
            {
                Label1.Text = "İşleme Alındı";
            }
            else if (CheckBox2.Checked)
            {
                Label1.Text = "Reddedildi";
            }
            else
            {
                Label1.Text = "Karar Yok";
            }
            
            SqlCommand cmd = new SqlCommand("update talep set t_Cevap=@p1, t_CevapTarih=@p2, t_DurumID=@p3, t_İslemDurumu=@p5,t_CevaplayanID=@p6 where t_ID=@p4", con.con());
            cmd.Parameters.AddWithValue("@p1", txt_TalepCevap.Text);
            cmd.Parameters.AddWithValue("@p2", DateTime.Now);
            cmd.Parameters.AddWithValue("@p3", true);
            cmd.Parameters.AddWithValue("@p4", t_ID);
            cmd.Parameters.AddWithValue("@p5", Label1.Text);
            cmd.Parameters.AddWithValue("@p6", lbl_adminID.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("adminAnasayfa.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAnasayfa.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAnasayfa.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(" select *from dosyalar where  t_ID='" + t_ID + "'", con.con());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename='" + t_ID + "'.txt");
                Response.TransmitFile(Server.MapPath("~/dosyalar/" + t_ID + ".txt"));
                Response.End();
            }
        }
    }
}