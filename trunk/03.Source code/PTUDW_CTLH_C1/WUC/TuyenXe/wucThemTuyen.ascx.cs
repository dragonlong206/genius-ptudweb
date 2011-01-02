using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace PTUDW_CTLH_C1.WUC.TuyenXe
{
    public partial class wucThemTuyen : System.Web.UI.UserControl
    {
        //TuyenXeBUS _tuyenXeBUS = new TuyenXeBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IsLogin"] == 0 || (int)Session["MaLoaiNhanVien"] != 3)
            {
                Response.Redirect("~/Default.aspx?showMessage=true");
            }
            if (!Page.IsPostBack)
            {
                ddlTramDen.DataBind();
                ddlTramDi.DataBind();
            }
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            TUYEN_XE TuyenXeDTO = new TUYEN_XE();
            TuyenXeDTO.TenTuyenXe = txtTenTuyen.Text;
            TuyenXeDTO.MaTramDi = int.Parse(ddlTramDi.SelectedValue);
            TuyenXeDTO.MaTramDen = int.Parse(ddlTramDen.SelectedValue);
            TuyenXeDTO.KhoangThoiGianDi = int.Parse(txtChayTrong.Text);
            TuyenXeDTO.TanSuatChuyen = float.Parse(txtTanSuatChuyen.Text);
            TuyenXeDTO.LuongTaiXe = int.Parse(txtLuongTaiXe.Text);
            TuyenXeDTO.GiaVe = int.Parse(txtGiaVe.Text);
            TuyenXeDTO.GioChayChuyenDauTienTrongNgay = float.Parse(txtGioChayChuyenDau.Text);
            TuyenXeDTO.GioChayChuyenCuoiCungTrongNgay = float.Parse(txtGioChayChuyenCuoi.Text);
            TuyenXeBUS.ThemTuyenXe(TuyenXeDTO);
            lblThongBao.Text = "Đã thêm tuyến thành công";
        }

        protected void btnNhapLai_Click(object sender, EventArgs e)
        {

        }
    }
}