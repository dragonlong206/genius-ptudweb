using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTUDW_CTLH_C1.WUC
{
    public partial class wucSearch : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.cdsThoiGianDi.SelectedDate = DateTime.Now;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Administration/SearchChuyen.aspx?MaTramDi="+ddlNoiKhoiHanh.SelectedValue+"&MaTramDen="+ddlNoiDen.SelectedValue+"&GiaVe="+txtGia.Text+"&ThoiGianKhoiHanh="+txtThoiGianDi.Text);
            
        }
    }
}