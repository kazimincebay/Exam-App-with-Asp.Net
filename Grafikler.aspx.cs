using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=KAZIMM;Initial Catalog=UdemySiteDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {   //Sorgu1
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Execute Graf1", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                ctl01.Series["Dersler"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
            }
            baglanti.Close();

            //Sorgu2
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Execute Graf2", baglanti);
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                ctl02.Series["Cinsiyet"].Points.AddPoint(dr2[0].ToString(), int.Parse(dr2[1].ToString()));
            }
            baglanti.Close();

            //Sorgu3
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("Execute Graf3", baglanti);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                ctl03.Series["Ogretmenler"].Points.AddPoint(dr3[0].ToString(), int.Parse(dr3[1].ToString()));
            }
            baglanti.Close();

            //Sorgu4
            baglanti.Open();
            SqlCommand komut4 = new SqlCommand("Execute Graf4", baglanti);
            SqlDataReader dr4 = komut4.ExecuteReader();
            while (dr4.Read())
            {
                ctl04.Series["Notlar"].Points.AddPoint(dr4[0].ToString(), int.Parse(dr4[1].ToString()));
            }
            baglanti.Close();
        }
    }
}