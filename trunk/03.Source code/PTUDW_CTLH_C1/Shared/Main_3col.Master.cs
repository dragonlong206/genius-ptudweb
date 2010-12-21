using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Collections;
using DTO;
using BUS;

namespace PTUDW_CTLH_C1
{
    public partial class Main_3col : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                bool IsLogin = new TaiKhoanBUS().DangNhap(txtUsername.Text, txtPassword.Text);

                if (IsLogin)
                {
                    int MaNhanVien = new TaiKhoanBUS().LayMaNhanVien(txtUsername.Text, txtPassword.Text);
                    int MaLoaiNhanVien = new NhanVienBUS().LayLoaiNhanVien(MaNhanVien);

                    Session["IsLogin"] = 1;
                    Session["HoTen"] = new NhanVienBUS().LayTenNhanVien(MaNhanVien);
                    Session["Authentication"] = new LoaiNhanVienBUS().LayTenLoaiNhanVien(MaLoaiNhanVien);

                    //redirect

                    ThayDoiTrangThai();
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
        }

        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            Session ["IsLogin"] = 0;
	        Response.Redirect("Default.aspx");
        }
    }
}
