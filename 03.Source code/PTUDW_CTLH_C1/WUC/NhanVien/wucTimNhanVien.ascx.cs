using System;
using System.Collections;
using System.Collections.Generic;
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

namespace PTUDW_CTLH_C1.WUC.NhanVien
{
    public partial class wucTimNhanVien : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            string HoTen = txtHoTen.Text.ToString();
            NhanVienBUS nvBUS = new NhanVienBUS();
            List<usp_SelectNHAN_VIENResult> dsNhanVien = nvBUS.TimKiemNhanVien(HoTen);

            if (dsNhanVien.Count > 0)
            {
                this.lblKetQua.Text = "Kết quả";
                this.gvNhanVien.DataSource = dsNhanVien;
                this.gvNhanVien.DataBind();
                this.gvNhanVien.Visible = true;
            }
            else
            {
                this.lblKetQua.Text = "Không tìm thấy kết quả phù hợp";
                this.gvNhanVien.Visible = false;
            }
        }
    }
}