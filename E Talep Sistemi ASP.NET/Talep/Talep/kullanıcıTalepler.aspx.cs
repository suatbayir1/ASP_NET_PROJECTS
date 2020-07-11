using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Talep
{
    public partial class kullanıcıTalepler : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_ikincitarih.Visible = false;
            lbl_ilktarih.Visible = false;
            lbl_kID.Visible = false;
            lbl_kID.Text = Session["k_ID"].ToString();
        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType.Equals(DataControlRowType.DataRow))
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                for (int i = 0; i <6; i++)

                {
                    if ((string)DataBinder.Eval(e.Row.DataItem, "t_İslemDurumu") == "İşleme Alındı")
                    {
                        e.Row.Cells[i].BackColor = System.Drawing.Color.Green;
                    }
                    if ((string)DataBinder.Eval(e.Row.DataItem, "t_İslemDurumu") == "Reddedildi")
                    {
                        e.Row.Cells[i].BackColor = System.Drawing.Color.DarkRed;
                    }
                    if ((string)DataBinder.Eval(e.Row.DataItem, "t_İslemDurumu") == "Beklemede")
                    {
                        e.Row.Cells[i].BackColor = System.Drawing.Color.Gray;
                    }
                    if ((string)DataBinder.Eval(e.Row.DataItem, "t_İslemDurumu") == "Karar Yok")
                    {
                        e.Row.Cells[i].BackColor = System.Drawing.Color.Yellow;
                    }
                }
            }
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            //this.lbl_ilktarih.Text = this.Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
        {
            //this.lbl_ikincitarih.Text = this.Calendar2.SelectedDate.ToShortDateString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıAnasayfa.aspx");
        }

        protected void btn_listele_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            SqlCommand cmd = new SqlCommand("SELECT t_ID, t_GelenTarih, t_Baslik, t_CevapTarih, t_İslemDurumu, t_CevaplayanID,adminAd FROM talep LEFT JOIN admin ON t_CevaplayanID=adminID  WHERE t_GonderenID='"+lbl_kID.Text+"' and t_GelenTarih BETWEEN '"+takvim1.Text+"' and '"+takvim2.Text+"' ORDER BY t_GelenTarih", con.con());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}