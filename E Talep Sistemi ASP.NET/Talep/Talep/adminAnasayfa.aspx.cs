using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Text;

namespace Talep
{
    public partial class adminAnasayfa : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();
        string t_ID = "";
        string islem = "";
        //private HtmlTextWriter htmlWrite;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                btn_listele.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                takvim1.Visible = false;
                takvim2.Visible = false; 
                btn_Excel.Visible = false;
            }
           
            /* talep sil*/
            t_ID = Request.QueryString["t_ID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmd = new SqlCommand("delete from talep where t_ID='" + t_ID + "'", con.con());
                cmd.ExecuteNonQuery();
            }

            lbl_Ad.Text = Session["ad"].ToString();
            lbl_Email.Text = Session["email"].ToString();
            lbl_ID.Text = Session["ID"].ToString();
            lbl_Soyad.Text = Session["soyad"].ToString();
            lbl_KullanıcıAd.Text = Session["k_ad"].ToString();
            lbl_Yetki.Text = Session["yetki"].ToString();

            dl_cevaplanmısTalepler.Visible = false;
            lbl_ID.Visible = false;

        }

        protected void btn_TalepGoruntule_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            btn_listele.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            takvim1.Visible = true;
            takvim2.Visible = true;
            dl_cevaplanmısTalepler.Visible = false;
        }

        protected void btn_kEkle_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıKayit.aspx");
        }

        protected void btn_MesajGonder_Click(object sender, EventArgs e)
        {
            Session["adminID"] = lbl_ID.Text;
            Response.Redirect("adminMesajGonder.aspx");
        }

        protected void btn_CevaplanmışTalepler_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            btn_Excel.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            takvim1.Visible = false;
            takvim2.Visible = false;
            btn_listele.Visible = false;
            Session["adminID"] = lbl_ID.Text;
            dl_cevaplanmısTalepler.Visible = true;
            SqlCommand cmd = new SqlCommand("select *from talep ", con.con());
            SqlDataReader dr = cmd.ExecuteReader();

            dl_cevaplanmısTalepler.DataSource = dr;
            dl_cevaplanmısTalepler.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanıcıBilgileri.aspx");
        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            /*data gridview renklendirme */
            if (e.Row.RowType.Equals(DataControlRowType.DataRow))
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                for (int i = 0; i < 8; i++)
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
                    if ((string)DataBinder.Eval(e.Row.DataItem, "t_İslemDurumu") == "Cevaplanmadı")
                    {
                        e.Row.Cells[i].BackColor = System.Drawing.Color.Yellow;
                    }
                }
                btn_Excel.Visible = true;
            }
        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            Session["adminID"] = lbl_ID.Text;
            /*eğer griedview de dosya secilmisse ve dosya var mı yoksa kontrol et varsa indir*/
            if (e.CommandName == "dosya")
            {
                SqlCommand cmd = new SqlCommand(" select *from dosyalar where  t_ID='" + e.CommandArgument + "'", con.con());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Response.ContentType = "application/octect-stream";
                    Response.AppendHeader("content-disposition", "filename='" + e.CommandArgument + "'.txt");
                    Response.TransmitFile(Server.MapPath("~/dosyalar/" + e.CommandArgument + ".txt"));
                    Response.End();
                }
            }
            /*diger durumlarda talepGostersayfasına git*/
            else
            {               
                Response.Redirect("~/talepGoster.aspx?t_ID=" + e.CommandArgument);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("giris.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminKayit.aspx");
        }

        protected void btn_listele_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            SqlCommand cmd = new SqlCommand("SELECT *,dosyalar.DosyaYol FROM talep left join dosyalar on talep.t_ID=dosyalar.t_ID WHERE t_GelenTarih BETWEEN '" + takvim1.Text + "' and '" + takvim2.Text + "' ORDER BY t_GelenTarih", con.con());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();    
            
        }

        protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btn_Excel_Click(object sender, EventArgs e)
        {
            GridView1.AllowPaging = false;
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=DosyaAdi.xls");
            Response.Charset = "iso-8859-9";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);
                GridView1.RenderControl(hw);
                string style = @"<style> .textmode {} </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();

            }         
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Excel için gerekli*/
        }
    }
}
