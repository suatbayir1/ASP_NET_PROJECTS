using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Talep.kullanıcı
{
    public partial class kullanıcıKayit : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
        }

        bool durum = true;

        private void kontrol()
        {
            SqlCommand cmd = new SqlCommand("select *from kullanici", con.con());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (txt_kAd.Text == dr["k_KullaniciAdi"].ToString())
                {
                    durum = false;
                }
            }
        }

        protected void btn_KayıtOl_Click(object sender, EventArgs e)
        {
            kontrol();
            if (txt_kAd.Text == "")
            {
                Label1.Visible = true;
                Label1.Text = "kullanıcı adı boş bırakılamaz";
                durum = false;
            }
            if (txt_Sifre.Text == "")
            {
                Label2.Visible = true;
                Label2.Text = "şifre boş bırakılamaz";
                durum = false;
            }
            if (durum == true)
            {
                SqlCommand cmd = new SqlCommand("insert into kullanici(k_Ad,k_Soyad,k_KullaniciAdi,k_KullaniciSifre,k_Email,k_Departman) values(@p1,@p2,@p3,@p4,@p5,@p6)", con.con());
                cmd.Parameters.AddWithValue("@p1", txt_Ad.Text);
                cmd.Parameters.AddWithValue("@p2", txt_Soyad.Text);
                cmd.Parameters.AddWithValue("@p3", txt_kAd.Text);
                cmd.Parameters.AddWithValue("@p4", txt_Sifre.Text);
                cmd.Parameters.AddWithValue("@p5", txt_Email.Text);
                cmd.Parameters.AddWithValue("@p6", txt_departman.Text);
                cmd.ExecuteNonQuery();
                Response.Redirect("adminAnasayfa.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Bu kullanıcı adı zaten var";
            }
        }
    }
}