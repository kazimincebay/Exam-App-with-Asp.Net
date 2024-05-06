using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int notid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
                TxtDersAdı.Text = dt.NotGetir(notid)[0].DERS_AD;
                TxtOgrId.Text = dt.NotGetir(notid)[0].OGRENCIID.ToString();
                TxtOgrAdSoyad.Text = dt.NotGetir(notid)[0].OGRENCİADSOYAD;
                TxtSınav1.Text = dt.NotGetir(notid)[0].SINAV1.ToString();
                TxtSınav2.Text = dt.NotGetir(notid)[0].SINAV2.ToString();
                TxtSınav3.Text = dt.NotGetir(notid)[0].SINAV3.ToString();
                TxtOrtalama.Text = dt.NotGetir(notid)[0].ORTALAMA.ToString();
                TxtDurum.Text = dt.NotGetir(notid)[0].DURUM.ToString();
            }
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int notid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
            double sinav1, sinav2, sinav3;
            double ortalama;
            TxtOgrId.Text = dt.NotGetir(notid)[0].OGRENCIID.ToString();
            sinav1 = Convert.ToInt32(TxtSınav1.Text);
            sinav2 = Convert.ToInt32(TxtSınav2.Text);
            sinav3 = Convert.ToInt32(TxtSınav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            TxtOrtalama.Text = ortalama.ToString("0.00");
            if (ortalama>=50)
            {
                TxtDurum.Text = "True";
            }
            else
            {
                TxtDurum.Text = "False";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int notid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
            dt.NotGuncelle(byte.Parse( TxtSınav1.Text),byte.Parse(TxtSınav2.Text),byte.Parse(TxtSınav3.Text),decimal.Parse(TxtOrtalama.Text),bool.Parse(TxtDurum.Text),notid);
            Response.Redirect("NotListesi.aspx");
        }
    }
}