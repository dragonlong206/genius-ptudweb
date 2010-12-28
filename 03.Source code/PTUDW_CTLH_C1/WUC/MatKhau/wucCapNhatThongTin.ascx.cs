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

namespace PTUDW_CTLH_C1.WUC.MatKhau
{
    public partial class wucCapNhatThongTin : System.Web.UI.UserControl
    {
        int MaNhanVien;
        NHAN_VIEN nv;
        protected void Page_Load(object sender, EventArgs e)
        {
            MaNhanVien = (int)Session["MaNhanVien"];
            nv = new NhanVienBUS().LayThongTinNhanVienTheoMaNhanVien(MaNhanVien);
            txtDiaChi.Text = nv.DiaChi;
            txtDienThoai.Text = nv.DienThoai;
            txtHoTen.Text = nv.HoTen;
            
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            nv.MaNhanVien = MaNhanVien;
            nv.DiaChi = txtDiaChi.Text;
            nv.DienThoai = txtDienThoai.Text;
            nv.HoTen = txtHoTen.Text;
            NhanVienBUS NhanVienBUS = new NhanVienBUS();
            NhanVienBUS.CapNhatThongTin(nv);
        }
    }
}