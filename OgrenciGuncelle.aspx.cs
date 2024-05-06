using Azure.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
			{
                
                    var id = Convert.ToInt32(Request.QueryString["OGRID"]);
                    DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

                    TxtOgrId.Text = id.ToString();
                    TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                    TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                    TxtOgrEPosta.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                    TxtOgrTelNo.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                    TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                    TxtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;

                
            }
			catch (Exception)
			{

				TxtOgrFoto.Text="Link Girin";
			}
        }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters .TBL_OGRENCITableAdapter();
            dt.OgrenciGuncelle(TxtOgrAd.Text,TxtOgrSoyad.Text,TxtOgrTelNo.Text,TxtOgrEPosta.Text,TxtOgrSifre.Text,TxtOgrFoto.Text,id);
            Response.Redirect("Default.aspx");
        }
    }
}