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
using DTO;
using System.Collections.Generic;

namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class wucXemLichChayKeTiep : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IsLogin"] == 0 || (int)Session["MaLoaiNhanVien"] != 4)
            {
                Response.Write("<script>alert('Bạn không đủ quyền thực hiện chức năng này')</script>");
                Response.Redirect("~/Default.aspx");
            }

            lblKetQua.Text = "Không có lịch chạy hôm nay!";
            lblKetQua.Visible = true;
        }

        protected void ldsDanhSachChuyenKe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            int iMaNhanVien = (int)Session["MaNhanVien"];
            ChuyenXeBUS ChuyenXeBUS = new ChuyenXeBUS();
            e.Result = ChuyenXeBUS.XemDanhSachChuyenKeTiep(iMaNhanVien);
            

        }

        protected void gvDanhSachChuyenKe_RowCreated(object sender, GridViewRowEventArgs e)
        {
            lblKetQua.Visible = false;
        }
    }
}