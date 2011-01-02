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

namespace PTUDW_CTLH_C1.Shared
{
    public partial class Head : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IsLogin"] == 1)
            {
                ThayDoiTrangThai();
            }
        }

        protected void ddlThemes_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SelectedTheme"] = this.ddlThemes.Text;
            Server.Transfer(Request.FilePath);
        }

        public string SelectedTheme
        {
            get
            {
                return this.ddlThemes.Text;
            }
            set
            {
                this.ddlThemes.Text = value;
            }
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.ToString().Length > 0 && txtPassword.Text.ToString().Length > 0)
            {
                NhanVienBUS nvBUS = new NhanVienBUS();
                string password = MyEncryption.Encrypt(txtPassword.Text);
                bool IsLogin = new TaiKhoanBUS().DangNhap(txtUsername.Text, password);

                if (IsLogin)
                {
                    int MaNhanVien = new TaiKhoanBUS().LayMaNhanVien(txtUsername.Text, password);
                    int MaLoaiNhanVien = nvBUS.LayLoaiNhanVien(MaNhanVien);

                    Session["IsLogin"] = 1;
                    Session["HoTen"] = nvBUS.LayTenNhanVien(MaNhanVien);
                    String strVaiTro = new LoaiNhanVienBUS().LayTenLoaiNhanVien(MaLoaiNhanVien);
                    Session["VaiTro"] = strVaiTro;
                    Session["TaiKhoan"] = txtUsername.Text;
                    Session["MaTaiKhoan"] = new TaiKhoanBUS().LayMaTaiKhoan((String)(Session["TaiKhoan"]));
                    Session["MaNhanVien"] = MaNhanVien;
                    Session["MaLoaiNhanVien"] = MaLoaiNhanVien;

                    ThayDoiTrangThai();

                    switch (MaLoaiNhanVien)
                    {
                        case 1:
                            Response.Redirect("~/Administration/Admin/Default.aspx");
                            break;
                        case 2:
                            Response.Redirect("~/Administration/DieuHanhTram/Default.aspx");
                            break;
                        case 3:
                            Response.Redirect("~/Administration/DieuHanhCongTy/Default.aspx");
                            break;
                        case 4:
                            Response.Redirect("~/Administration/TaiXe/Default.aspx");
                            break;
                    }

                }
                else
                {
                    Response.Write("<script>alert('Tên đăng nhập và mật khẩu không phù hợp')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Vui lòng nhập tên đăng nhập và mật khẩu')</script>");
            }
        }

        private void ThayDoiTrangThai()
        {
            txtUsername.Visible = false;
            txtPassword.Visible = false;
            btnDangNhap.Visible = false;
            btnQuenMatKhau.Visible = false;

            lblXinChao.Visible = true;
            btnXinChao.Visible = true;
            btnXinChao.Text = (String)Session["HoTen"];
            btnDangXuat.Visible = true;

            PhanHoiBUS phBUS = new PhanHoiBUS();
            int iPhanHoi = phBUS.DemPhanHoiChuaDoc((int)(Session["MaNhanVien"])).SoLuong.Value;
            if (iPhanHoi > 0)
            {
                lbtnPhanHoi.Text = "Có " + iPhanHoi.ToString() + " tin chưa đọc";
                lbtnPhanHoi.Visible = true;
            }
            else
            {
                lbtnPhanHoi.Visible = false;
            }
        }

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            Session["IsLogin"] = 0;
            Response.Redirect("~/Default.aspx");
        }
    }
}
