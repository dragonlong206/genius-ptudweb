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
using DTO;
using BUS;
using System.Collections.Generic;

namespace PTUDW_CTLH_C1.WUC.TuyenXe
{
    public partial class wucTimNhanhTuyen : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ddlTramKhoiHanh.DataBind();
                this.ddlTramDen.DataBind();
            }

            this.grvDanhSachTuyen.Columns[4].Visible = false;

            if ((int)Session["IsLogin"] == 1)
            {
                if ((int)Session["MaLoaiNhanVien"] == 3)
                {
                    this.grvDanhSachTuyen.Columns[4].Visible = true;
                }
            }


        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            int iMaTramDi = int.Parse(this.ddlTramKhoiHanh.SelectedValue.ToString());
            int iMaTramDen = int.Parse(this.ddlTramDen.SelectedValue.ToString());
            List<usp_SelectTuyenXeByMaTramDiAndMaTramDenResult> dsTuyen = TuyenXeBUS.TimNhanhTuyen(iMaTramDi, iMaTramDen);
            if (dsTuyen.Count > 0)
            {
                this.lblKetQua.Text = string.Empty;
                this.grvDanhSachTuyen.DataSource = dsTuyen;
                this.grvDanhSachTuyen.DataBind();
                this.grvDanhSachTuyen.Visible = true;
            }
            else
            {
                this.grvDanhSachTuyen.Visible = false;
                this.lblKetQua.Text = "Không tìm thấy kết quả phù hợp";
            }
        }
    }
}