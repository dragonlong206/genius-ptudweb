using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
using System.IO;

namespace PTUDW_CTLH_C1.WUC.TinTuc
{
    public partial class wucXemTinTuc : System.Web.UI.UserControl
    {
        public const int SO_TIN_MOI = 2;
        protected void Page_Load(object sender, EventArgs e)
        {
            TinTucBUS busTinTuc = new TinTucBUS();
            List<TIN_TUC> lstTinMoiNhat = busTinTuc.SelectTinTucMoi(SO_TIN_MOI);
            this.rptTinTuc.DataSource = lstTinMoiNhat;
            this.rptTinTuc.DataBind();
        }

        protected void rptTinTuc_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ChiTiet")
            {
                int iMaTinTuc = int.Parse(e.CommandArgument.ToString());
                Response.Redirect("~/Administration/Admin/ChiTietTinTuc.aspx?MaTinTuc=" + iMaTinTuc);
            }
        }
    }
}