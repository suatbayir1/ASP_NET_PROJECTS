using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Talep
{
    public class sqlBaglanti
    {
        public SqlConnection con()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=LAPTOP-IUHE293E\\ROOT; Initial Catalog=talepSistemi; Integrated Security=true;");
            baglanti.Open();
            SqlConnection.ClearPool(baglanti); //bağlantı havuzunu temizler
            SqlConnection.ClearAllPools();
            return (baglanti);
        }
    }
}