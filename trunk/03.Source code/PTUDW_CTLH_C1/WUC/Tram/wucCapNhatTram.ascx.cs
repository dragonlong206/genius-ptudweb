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
using BUS;
using DTO;

namespace PTUDW_CTLH_C1.WUC.Tram
{
    public partial class wucCapNhatTram : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntTimLiem_Click(object sender, EventArgs e)
        {
            fvDsTram.Visible = true;
            fvDsTram.DataBind();
        }

        protected void ldsDsDieuHanhTram_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            NhanVienBUS nhanvienbus = new NhanVienBUS();
            e.Result = nhanvienbus.SelectNhanVienLaDieuHanhTramResult();
        }
    }
}