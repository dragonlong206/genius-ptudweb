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

namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class wucCacChuyenVeTrongNgay : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime myDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);

            ldsChuyenXe.Where = @"TUYEN_XE.MaTramDen == @MaTramXe AND DuKienDen >= DateTime.Parse(""" + myDate + @""") AND DuKienDen < DateTime.Parse(""" + myDate.AddDays(1) + @""")";

            lblThongBao.Text = "HÔM NAY KHÔNG CÓ CHUYẾN NÀO VỀ TRẠM CẢ";
        }

        protected void gvChuyenXe_RowCreated(object sender, GridViewRowEventArgs e)
        {
            lblThongBao.Text = "DANH SÁCH CÁC CHUYẾN VỀ TRẠM TRONG NGÀY";
        }

        protected void gvChuyenXe_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int iMaTinhTrang = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "MaTinhTrang"));
                switch (iMaTinhTrang)
                {
                    case 1:
                        e.Row.BackColor = System.Drawing.Color.FromArgb(255, 234, 255); // Full row color
                        break;
                    case 2:
                        e.Row.BackColor = System.Drawing.Color.FromArgb(255, 255, 0); // Full row color
                        break;
                    case 3:
                        e.Row.BackColor = System.Drawing.Color.FromArgb(0, 255, 0); // Full row color
                        break;
                }
            }            
        }
    }
}