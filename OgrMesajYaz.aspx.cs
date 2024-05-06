using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrMesajYaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            dt.MesajGonder(Convert.ToInt32(Session["OGRNUMARA"]), Convert.ToInt32(TxtMsjAlici.Text), TxtMsjBaslik.Text, TxtMsjIcerik.Value);
            Response.Redirect("OgrGidenMesaj.aspx");
        }
    }
}