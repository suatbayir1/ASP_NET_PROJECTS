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
    public partial class a : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();


        protected void Page_Load(object sender, EventArgs e)
        {
            /* kullanıcı değeri boş ise  giriş ekranına geri dön */
            if (Session["Kullanıcı"] == null)
            {
                Response.Redirect("giris.aspx");
            }
            else
            {
                lbl_Ad.Text = Session["Ad"].ToString();
                lbl_Soyad.Text = Session["Soyad"].ToString();
                lbl_Email.Text = Session["Email"].ToString();
                lbl_kAdi.Text = Session["Kullanıcı"].ToString();
                lbl_ID.Text = Session["ID"].ToString();
            }


                /*yeni mesajlar */
                SqlCommand cmd = new SqlCommand("select *from kullanici where k_ID=@p1", con.con());
                cmd.Parameters.AddWithValue("@p1", lbl_ID.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lbl_MesajSayısı.Text = dr["mesajsayisi"].ToString();
                }
                /*okunmamış mesaj yok ise boş bırak */
                if (lbl_MesajSayısı.Text == "0" || lbl_MesajSayısı.Text == "")
                {
                    Label2.Text = "";
                    lbl_MesajSayısı.Text = "";
                }

                /* gelen mesajlar butonuna okunmamış mesajları ekleme */

                btn_GelenMesajlar.Text = btn_GelenMesajlar.Text + "(" + lbl_MesajSayısı.Text + ")";
        }

        protected void btn_TalepGonder_Click(object sender, EventArgs e)
        {
            Session["k_ID"] = lbl_ID.Text;
            Response.Redirect("talepGonder.aspx");
        }

    

        protected void btn_Talepler_Click(object sender, EventArgs e)
        {
            Session["k_ID"] = lbl_ID.Text;
            Response.Redirect("kullanıcıTalepler.aspx");
        }

        protected void btn_talepCevapları_Click(object sender, EventArgs e)
        {
            Session["k_ID"] = lbl_ID.Text;
            Response.Redirect("kullanıcıTalepCevapları.aspx");
        }

        protected void btn_GelenMesajlar_Click(object sender, EventArgs e)
        {
            Session["k_ID"] = lbl_ID.Text;
            Response.Redirect("kullanıcıGelenMesajlar.aspx");
        }

        protected void btn_Adminler_Click(object sender, EventArgs e)
        {
            Response.Redirect("yoneticiler.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("giris.aspx");
        }
    }
}