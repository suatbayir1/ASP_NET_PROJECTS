using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Talep.kullanıcı
{
    public partial class talepGonder : System.Web.UI.Page
    {
        sqlBaglanti con = new sqlBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label1.Text = Session["k_ID"].ToString();
        }

        protected void btn_tGonder_Click(object sender, EventArgs e)
        {
                SqlCommand cmd = new SqlCommand("insert into Talep(t_Baslik,t_Icerik,t_GonderenID) values(@p1,@p2,@p4); SELECT SCOPE_IDENTITY();", con.con());
                cmd.Parameters.AddWithValue("@p1", txt_Baslik.Text);
                cmd.Parameters.AddWithValue("@P2", txt_Icerik.Text);
                cmd.Parameters.AddWithValue("@p4", Label1.Text);
                int ID = Convert.ToInt32(cmd.ExecuteScalar());

            try
            {
                if (fu_dosya.HasFile)
                {
                    string dosyaAdi = ID.ToString(); //Dosyanın adı
                    byte[] dosyaIcerik = fu_dosya.FileBytes; //Dosyanın bilgilerini binary formatta getirir
                    string dosyaTipi = fu_dosya.PostedFile.ContentType;
                        fu_dosya.SaveAs(Server.MapPath("/dosyalar/" + ID.ToString() + ".txt"));
                        SqlCommand cmd2 = new SqlCommand("insert into dosyalar(DosyaAd,DosyaIcerik,DosyaTip,t_ID,DosyaYol) Values(@dosya_isim, @dosya_icerik, @dosya_tip,@id,@dosya_yol)", con.con());
                        cmd2.Parameters.AddWithValue("@dosya_isim", dosyaAdi);
                        cmd2.Parameters.AddWithValue("@dosya_icerik", dosyaIcerik);
                        cmd2.Parameters.AddWithValue("@dosya_tip", dosyaTipi);
                        cmd2.Parameters.AddWithValue("@id", ID.ToString());
                        cmd2.Parameters.AddWithValue("@dosya_yol", "/dosyalar/" + ID.ToString() + ".txt");
                        cmd2.ExecuteNonQuery();
                        Response.Redirect("kullanıcıAnasayfa.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Lütfen txt uzantılı bir dosya yükleyin')</script>");
                }
            }
            catch (Exception)

                {
                    Response.Write("<script>alert('Lütfen txt uzantılı bir dosya yükleyin')</script>");
                
                
            }
            
        }
    }
}