using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet1TableAdapters.TBL_OGRETMENTableAdapter dt = new DataSet1TableAdapters.TBL_OGRETMENTableAdapter();
                TxtDuyuruOgretmen.DataSource = dt.OgretmenListesi();
                TxtDuyuruOgretmen.DataTextField = "OGRTADSOYAD";
                TxtDuyuruOgretmen.DataValueField = "OGRTID";
                TxtDuyuruOgretmen.DataBind();
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruEkle(TxtDuyuruBaslık.Text,TxtDuyuruIcerik.Value,Convert.ToInt32(TxtDuyuruOgretmen.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}