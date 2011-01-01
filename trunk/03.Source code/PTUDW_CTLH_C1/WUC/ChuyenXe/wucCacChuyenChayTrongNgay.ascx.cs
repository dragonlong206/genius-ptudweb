using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class wucCacChuyenChayTrongNgay : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime myDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);

            ldsChuyenXe.Where = @"TUYEN_XE.MaTramDi == @MaTramXe AND KhoiHanh >= DateTime.Parse(""" + myDate + @""") AND KhoiHanh < DateTime.Parse(""" + myDate.AddDays(1) + @""")";

            lblThongBao.Text = "HÔM NAY KHÔNG CÓ CHUYẾN NÀO CHẠY CẢ";
        }

        protected void gvChuyenXe_RowCreated(object sender, GridViewRowEventArgs e)
        {
            lblThongBao.Text = "DANH SÁCH CÁC CHUYẾN TRONG NGÀY";
        }
    }
}