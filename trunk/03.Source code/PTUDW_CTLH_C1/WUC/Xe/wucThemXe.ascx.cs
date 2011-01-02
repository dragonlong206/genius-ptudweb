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

namespace PTUDW_CTLH_C1.WUC.Xe
{
    public partial class WUX : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IsLogin"] == 0 || (int)Session["MaLoaiNhanVien"] != 3)
            {
                Response.Write("<script>alert('Bạn không đủ quyền thực hiện chức năng này')</script>");
                Response.Redirect("~/Default.aspx");
            }

            if (!Page.IsPostBack)
            {
                NhanVienBUS busNhanVien = new NhanVienBUS();
                List<usp_SelectTaiXesAllResult> dsTaiXe = busNhanVien.SelectTaiXesAll();                
            }
         
        }

        protected void ldsTaiXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            NhanVienBUS busNhanVien = new NhanVienBUS();

            e.Result = busNhanVien.SelectTaiXesAll();
        }

        protected void fvThemXe_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            lblThongBao.Visible = true;
            lblThongBao.Text = "Đã thêm thành công một xe mới!";
            //fvThemXe.Visible = false;
        }

        protected void txtBienSoXe_TextChanged(object sender, EventArgs e)
        {
            lblThongBao.Visible = false;
        }
    }
}