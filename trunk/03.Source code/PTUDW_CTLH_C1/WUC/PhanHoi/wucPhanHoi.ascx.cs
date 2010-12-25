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
using DTO;
using BUS;

namespace PTUDW_CTLH_C1.WUC.PhanHoi
{
    public partial class wucPhanHoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String str = txtPhanHoi.Text;
            DateTime ngaydang = DateTime.Now;
            PHAN_HOI_KHACH_HANG ph = new PHAN_HOI_KHACH_HANG();
            ph.NoiDung = str;
            ph.NgayDang = ngaydang;
            PhanHoiKhachHangBUS phBUS = new PhanHoiKhachHangBUS();
            phBUS.ThemPhanHoiKhachHang(ph);
        }
    }
}