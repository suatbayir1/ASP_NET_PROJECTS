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
    public partial class kullanıcıTalepCevapları : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();

    
        

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label1.Text = Session["k_ID"].ToString();

            SqlCommand cmd = new SqlCommand("select *from talep where t_DurumID=1 and t_GonderenID=@p1", con.con());
            cmd.Parameters.AddWithValue("@p1", Label1.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            dl_talepCevapları.DataSource = dr;
            dl_talepCevapları.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıAnasayfa.aspx");
        }
    }
}