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
    public partial class adminMesajGonder : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["adminID"].ToString();
            Label1.Visible = false;

            /* kullanıcı Id ve isimlerini combobox'a çekme*/
                SqlCommand cmd = new SqlCommand("select *from kullanici", con.con());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                if (!Page.IsPostBack)
                {
                    dd_kisiler.Items.Insert(0, dr["k_Ad"].ToString());       
                }
            }
                 dr.Close();
        }

        protected void btn_MesajGonder_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into mesaj(m_GonderenID,m_AlanID,m_Baslik,m_Icerik) values(@p1,@p2,@p3,@p4)", con.con());
            cmd.Parameters.AddWithValue("@p1", Label1.Text);
            cmd.Parameters.AddWithValue("@p2", txt_ID.Text);
            cmd.Parameters.AddWithValue("@p3", txt_MesajBaslik.Text);
            cmd.Parameters.AddWithValue("@p4", txt_MesajIcerik.Text);


            cmd.ExecuteNonQuery();

            SqlCommand cmd2 = new SqlCommand("update  kullanici set mesajsayisi=mesajsayisi+1 where k_ID='"+txt_ID.Text+"'", con.con());
            
            cmd2.ExecuteNonQuery();

            Response.Redirect("adminAnasayfa.aspx");
        }

        protected void dd_kisiler_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select k_ID from kullanici where k_Ad=@p1", con.con());
            cmd.Parameters.AddWithValue("@p1", dd_kisiler.SelectedItem.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txt_ID.Text = dr["k_ID"].ToString();
            }
        }
    }
}