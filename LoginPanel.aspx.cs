using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=KAZIMM;Initial Catalog=UdemySiteDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from TBL_OGRENCI where OGRNUMARA=@p1 and OGRSIFRE=@p2",baglanti);
            komut.Parameters.AddWithValue("@p1", TxtKullanıcıAdı.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OGRNUMARA", TxtKullanıcıAdı.Text);
                Response.Redirect("OgrenciDefault.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Kullanıcı Adı ya da Şifre";
            }
            baglanti.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from TBL_OGRETMEN where OGRTNUMARA=@p1 and OGRTSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtKullanıcıAdı.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OGRTNUMARA", TxtKullanıcıAdı.Text);
                Response.Redirect("Default.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Kullanıcı Adı ya da Şifre";
            }
            baglanti.Close();
        }
    }
}