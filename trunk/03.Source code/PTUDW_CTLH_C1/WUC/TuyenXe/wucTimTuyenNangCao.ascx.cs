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
using DTO;
using BUS;

namespace PTUDW_CTLH_C1.WUC.TuyenXe
{
    public partial class wucTimTuyenNangCao : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.ddlTramKhoiHanh.DataBind();
                this.ddlTramDen.DataBind();
            }

            if ((int)Session["IsLogin"] == 0)
            {
                this.grvDanhSachTuyenNangCao.Columns[4].Visible = false;
            }
            else
            {
                this.grvDanhSachTuyenNangCao.Columns[4].Visible = true;
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            int iMaTramDi = int.Parse(this.ddlTramKhoiHanh.SelectedValue.ToString());
            int iMaTramDen = int.Parse(this.ddlTramDen.SelectedValue.ToString());
            
            int iGiaVeTu = 0;
            if (!this.txtGiaVeTu.Text.Equals(string.Empty))
            {
                iGiaVeTu = int.Parse(this.txtGiaVeTu.Text);
            }

            int iGiaVeDen = int.MaxValue;
            if (!this.txtGiaVeDen.Text.Equals(string.Empty))
            {
                iGiaVeDen = int.Parse(this.txtGiaVeDen.Text);
            }

            List<usp_SelectTUYEN_XEByTramAndGiaResult> dsTuyen = TuyenXeBUS.TimKiemNangCao(iMaTramDi, iMaTramDen, iGiaVeTu, iGiaVeDen);
            if (dsTuyen.Count>0)
            {
                lblKetQua.Text ="Kết quả tìm kiếm";
                grvDanhSachTuyenNangCao.Visible = true;
                this.grvDanhSachTuyenNangCao.DataSource = dsTuyen;
                this.grvDanhSachTuyenNangCao.DataBind();
            }
            else
            {
                lblKetQua.Text = "Không tìm thấy kết quả phù hợp";
                grvDanhSachTuyenNangCao.Visible = false;
            }
        }
    }
}