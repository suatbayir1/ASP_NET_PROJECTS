using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Talep
{
    public partial class kullanıcıBilgileri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GridView1.Visible = false;
                GridView2.Visible = false;
            }
      
        }

        protected void btn_Admin_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
        }

        protected void btn_Kullanıcı_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
        }

        protected void btn_Anasayfa_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAnasayfa.aspx");
        }
    }
}