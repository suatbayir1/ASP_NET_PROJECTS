using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Talep.admin
{
    public partial class adminKayit : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select *from admin", con.con());
            SqlDataReader dr= cmd.ExecuteReader();
            while (dr.Read())
            {
                if (txt_kAdi.Text == dr["adminKullanıcıAdi"].ToString())
                {
                    durum = false;
                }
            }
        }


        protected void btn_kayit_Click(object sender, EventArgs e)
        {
            kontrol();
            if (txt_kAdi.Text == " ")
            {
                Label1.Visible = true;
                Label1.Text = "Kullanıcı adı boş bırakılamaz";
            }
            if (txt_sifre.Text ==" ")
            {
                Label2.Visible = true;
                Label2.Text = "şifre boş bırakılamaz";
            }
            if (durum == true)
            {
                SqlCommand cmd = new SqlCommand("insert into admin(adminAd,adminSoyad,adminKullanıcıAdi,adminSifre,adminEmail) values (@p1,@p2,@p3,@p4,@p5)", con.con());
                cmd.Parameters.AddWithValue("@p1", txt_Ad.Text);
                cmd.Parameters.AddWithValue("@p2", txt_Soyad.Text);
                cmd.Parameters.AddWithValue("@p3", txt_kAdi.Text);
                cmd.Parameters.AddWithValue("@p4", txt_sifre.Text);
                cmd.Parameters.AddWithValue("@p5", txt_email.Text);
                cmd.ExecuteNonQuery();
                btn_kayit.Text = "Kayıt Tamamlandı";
                Response.Redirect("adminGiris.aspx");
            }
            else
            {
                btn_kayit.Text = "Bu kayıt zaten var";
            }

        }
    }
}