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
    public partial class kullanıcıGelenMesajlar : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_ID.Visible = false;
            lbl_ID.Text = Session["k_ID"].ToString();
            SqlCommand cmd = new SqlCommand("select *from mesaj where m_Okunma=0 and m_AlanID='"+lbl_ID.Text+"'",con.con());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dl_mesajlar.DataSource = dr;
                dl_mesajlar.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıAnasayfa.aspx");
        }
    }
}