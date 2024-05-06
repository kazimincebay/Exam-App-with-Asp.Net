using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            TxtToplamOgrenci.Text = "Toplam Öğrenci Sayısı : "+ dt.ToplamOgrenci().ToString();
            TxtOgretmenSayisi.Text = "Toplam Öğretmen Sayısı : "+ dt.ToplamOgretmen().ToString();
            TxtDersSayisi.Text = "Toplam Ders Sayısı : "+ dt.ToplamDers().ToString();
            TxtToplamMesaj.Text = "Toplam Mesaj Sayısı : "+ dt.ToplamMesaj().ToString();
            TxtSistemDuyuruSayısı.Text="Toplam Duyuru Sayısı : "+ dt.ToplamDuyuru().ToString();
            TxtMatOrtalama.Text="Matematik Not Ortalaması : " + dt.MatOrtalama().ToString();
            TxtAlgoritmaOrtalama.Text = "Algoritma Not Ortalaması : " + dt.AlgoritmaOrtalama().ToString();
            TxtEdebiyatOrtalama.Text = "Edebiyat Not Ortalaması : "+dt.EdebiyatOrtalama().ToString();
            TxtMatBasarılıOgrenci.Text = "Matematik Sınav1'de En Başarılı Öğrenci : " + dt.MatEnBasariliOgrenci().ToString();
            TxtEdebiyatBasarılıOgrenci.Text = "Edebiyat Sınav1'de En Başarılı Öğrenci : " + dt.EdebiyatEnBasariliOgrenci().ToString();


        }
    }
}