using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace PTUDW_CTLH_C1.WUC.PhanHoi
{
    public partial class wucGhiNhanPhanHoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.rptPhanHoi.DataBind();
            if ((int)Session["IsLogin"] == 0 || (int)Session["MaLoaiNhanVien"] != 2)
            {
                
                Response.Write("<script>alert('Bạn không đủ quyền thực hiện chức năng này')</script>");
                Response.Redirect("~/Default.aspx?showMessage=true");
            }
        }

        protected void ldsTaiXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            NhanVienBUS busNhanVien = new NhanVienBUS();
            List<usp_SelectTaiXesAllResult> dsTaiXe = busNhanVien.SelectTaiXesAll();
            if (dsTaiXe.Count > 0)
            {
                e.Result = dsTaiXe;
            }
            else
            {
                this.lblThongBao.Text = "Các phản hồi đã được duyệt hết";
            }
        }

        protected void rptPhanHoi_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Duyet")
            {
                if (Session["IsLogin"].ToString().Equals("1"))
                {
                    int iMaPhanHoi = int.Parse(e.CommandArgument.ToString());
                    PhanHoiBUS busPhanHoi = new PhanHoiBUS();
                    AjaxControlToolkit.ComboBox cboTaiXe = (AjaxControlToolkit.ComboBox)e.Item.FindControl("cboTaiXe");
                    if (cboTaiXe.Items.Count > 0)
                    {
                        int iMaTaiXe = int.Parse(cboTaiXe.SelectedValue.ToString());
                        busPhanHoi.DuyetPhanHoi(iMaPhanHoi, 2);
                        busPhanHoi.ThemPhanHoiDaDuyet(iMaTaiXe, iMaPhanHoi, int.Parse(Session["MaNhanVien"].ToString()));
                        Label lblDaDuyet = (Label)e.Item.FindControl("lblDaDuyet");
                        lblDaDuyet.Text = "Đã duyệt";
                    }
                }
            }
        }
    }
}