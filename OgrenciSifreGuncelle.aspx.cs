using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciSifreGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
                string ogrenciNo = Request.QueryString["OGRNUMARA"].ToString();
                TxtOgrSifre.Text = dt.OgrenciNumaraSec(ogrenciNo)[0].OGRSIFRE;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            string ogrenciNo = Request.QueryString["OGRNUMARA"].ToString();
            dt.OgrenciSifreGuncelle(TxtOgrSifre.Text, ogrenciNo);
            Response.Redirect("OgrenciDefault.aspx?OGRNUMARA=" + ogrenciNo);
        }
    }
}