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
            lblKetQua.Visible = false;
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            gvNhanVien.DataBind();

            if (gvNhanVien.Rows.Count > 0)
            {
                gvNhanVien.Visible = true;
            }
            else
            {
                lblKetQua.Text = "Không tìm thấy kết quả!";
                lblKetQua.Visible = true;
            }

        }

        protected void gvNhanVien_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            lblKetQua.Text = "Đã cập nhật thành công!";
            lblKetQua.Visible = true;
        }


    }
}