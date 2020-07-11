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
    public partial class admin : System.Web.UI.Page
    {

        sqlBaglanti con = new sqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

 
        protected void btn_Giris_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Giris_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select *from admin where adminKullanıcıAdi=@p1 and adminSifre=@p2",con.con());
            cmd.Parameters.AddWithValue("@p1", txt_kAdi.Text);
            cmd.Parameters.AddWithValue("@p2", txt_kSifre.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["yetki"] = "ADMİN";
                Session["ad"] = dr["adminAd"].ToString();
                Session["soyad"] = dr["adminSoyad"].ToString();
                Session["email"] = dr["adminEmail"].ToString();
                Session["k_ad"] = dr["adminKullanıcıAdi"].ToString();
                Session["ID"] = dr["adminID"].ToString();
                Response.Redirect("adminAnasayfa.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Yanlış Şifre ve Kullanıcı Adı!!!";
            }

        }

        protected void btn_KayitOl_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminKayit.aspx");
        }
    }
}