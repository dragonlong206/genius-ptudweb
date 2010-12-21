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
            int maNhanVien = new TaiKhoanBUS().LayMaNhanVien(txtUsername.Text, txtPassword.Text);

            int maLoaiNhanVien = new NhanVienBUS().LayLoaiNhanVien(maNhanVien);

            List<String> roles = new LoaiNhanVienBUS().LayTenLoaiNhanVien(maLoaiNhanVien);

            MyIdentity userIdentity = new MyIdentity(txtUsername.Text, 1, true, txtUsername.Text, "someuser@some.com", "role");

            MyPrincipal principal = new MyPrincipal(userIdentity, roles);

            Context.User = principal;

            MyAuthentication.RedirectFromLoginPage(userIdentity);
        }
    }
}
