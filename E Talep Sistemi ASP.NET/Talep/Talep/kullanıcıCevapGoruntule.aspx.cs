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
    public partial class kullanıcıCevapGoruntule : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();
        string t_ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            t_ID = Request.QueryString["t_ID"].ToString();

            SqlCommand cmd = new SqlCommand("select *from talep where t_ID='"+t_ID+"'",con.con());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txt_TalepBaslik.Text = dr["t_Baslik"].ToString();
                txt_CevaplananTarih.Text = dr["t_CevapTarih"].ToString();
                txt_TalepCevabı.Text = dr["t_Cevap"].ToString();
            }
        }

        protected void btn_Tamam_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıTalepCevapları.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıAnasayfa.aspx");
        }
    }
}