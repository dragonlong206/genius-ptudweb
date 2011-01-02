using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace PTUDW_CTLH_C1.WUC.Tram
{
    public partial class wucXoaTram : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IsLogin"] == 0 || (int)Session["MaLoaiNhanVien"] != 3)
            {
                Response.Redirect("~/Default.aspx?showMessage=true");
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            gvThongTinTram.Visible = true;
            gvThongTinTram.DataBind();
        }

        
    }
}