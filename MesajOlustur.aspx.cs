using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class MesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            TxtMsjGonderen.Text = 1101.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            TxtMsjGonderen.Text = 1101.ToString();
            dt.MesajGonder(Convert.ToInt32( TxtMsjGonderen.Text),Convert.ToInt32(TxtMsjAlici.Text),TxtMsjBaslik.Text,TxtMsjIcerik.Value);
            Response.Redirect("GidenMesajlar.aspx");
        }
    }
}