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
using BUS;

namespace PTUDW_CTLH_C1.WUC.PhanHoi
{
    public partial class wucXemPhanHoiChiTiet : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PhanHoiBUS PhanHoiBUS = new PhanHoiBUS();
            int MaPhanHoi = int.Parse(Request.QueryString["MaPhanHoi"]);
            PhanHoiBUS.CapNhatTinhTrangPhanHoiDaDoc(MaPhanHoi);
        }
    }
}