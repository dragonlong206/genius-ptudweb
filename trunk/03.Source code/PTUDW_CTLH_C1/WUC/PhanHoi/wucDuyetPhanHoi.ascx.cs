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
        }

        protected void ldsTaiXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            NhanVienBUS busNhanVien = new NhanVienBUS();
            e.Result = busNhanVien.SelectTaiXesAll();
        }

        protected void rptPhanHoi_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Duyet")
            {
                PHAN_HOI_KHACH_HANG phSelectedItem = (PHAN_HOI_KHACH_HANG)e.Item.DataItem;
                PhanHoiBUS busPhanHoi = new PhanHoiBUS();
                busPhanHoi.DuyetPhanHoi(phSelectedItem.MaPhanHoi, 2);
            }
        }
    }
}