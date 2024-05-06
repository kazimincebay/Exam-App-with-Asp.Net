using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
                string ogrenciNo = Session["OGRNUMARA"].ToString();
                TxtNumara.Text = "Öğrenci Numarası : " + ogrenciNo;
                TxtAdSoyad.Text = "Adı Soyadı: " + dt.OgrenciNumaraSec(ogrenciNo)[0].OGRAD + " " + dt.OgrenciNumaraSec(ogrenciNo)[0].OGRSOYAD;
                TxtMail.Text = "Mail Adresi : " + dt.OgrenciNumaraSec(ogrenciNo)[0].OGRMAIL;
                TxtTelefon.Text = "Telefon Numarası : " + dt.OgrenciNumaraSec(ogrenciNo)[0].OGRTELEFON;
                TxtSifre.Text = "Şifre : " + dt.OgrenciNumaraSec(ogrenciNo)[0].OGRSIFRE;
                TxtCinsiyet.Text = "Cinsiyet : " + dt.OgrenciNumaraSec(ogrenciNo)[0].OGRCINSIYET;
                TxtFotograf.Text = "Fotoğraf Linki : " + dt.OgrenciNumaraSec(ogrenciNo)[0].OGRFOTOGRAF;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ogrenciNo = Convert.ToInt32(Request.QueryString["OGRNUMARA"].ToString());
            Response.Redirect("OgrenciSifreGuncelle.aspx?OGRNUMARA=" + ogrenciNo);
        }
    }
}