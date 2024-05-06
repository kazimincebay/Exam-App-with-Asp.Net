using Azure.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
                var id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
                TxtDuyuruId.Text = id.ToString();
                TxtDuyuruBaslık.Text = dt.DuyuruGetir(id)[0].DUYURUBASLIK;
                TxtDuyuruIcerik.Value = dt.DuyuruGetir(id)[0].DUYURUICERIK;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            var id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
            dt.DuyuruGuncelle(TxtDuyuruBaslık.Text, TxtDuyuruIcerik.Value, id);
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}