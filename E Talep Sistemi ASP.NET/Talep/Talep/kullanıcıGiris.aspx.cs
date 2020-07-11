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
    public partial class giris : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void btn_Kayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminKayit.aspx");
        }

        

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select *from kullanici where k_KullaniciAdi=@p1 and k_KullaniciSifre=@p2",con.con());
            cmd.Parameters.AddWithValue("@p1", txt_kAdi.Text);
            cmd.Parameters.AddWithValue("@p2", txt_Sifre.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["ID"] = dr["k_ID"].ToString();
                Session["Kullanıcı"] = dr["k_KullaniciAdi"].ToString();
                Session["Sifre"] = dr["k_KullaniciSifre"].ToString();
                Session["Ad"] = dr["k_Ad"].ToString();
                Session["Soyad"] = dr["k_Soyad"].ToString();
                Session["Email"] = dr["k_Email"].ToString();
                Response.Redirect("kullanıcıAnasayfa.aspx");   
            }
            else
            {
                Label1.Text = "Yanlış Kullanıcı adı veya şifre!!";
            }
        }
    }
}