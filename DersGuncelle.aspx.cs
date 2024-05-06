using Azure.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int dersid = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
                TxtDersId.Text= dersid.ToString();
                TxtDersAdı.Text= dt.DersGetir(dersid)[0].DERSAD;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int dersid = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            dt.DersGuncelle(TxtDersAdı.Text, dersid);
            Response.Redirect("DersListesi.aspx");
        }
    }
}