using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrBul : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (TxtOgrenciAd.Text != null)
            {
                DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
                Repeater1.DataSource = dt.OgrBulAd(TxtOgrenciAd.Text);
                Repeater1.DataBind();
            }

        }
    }
}