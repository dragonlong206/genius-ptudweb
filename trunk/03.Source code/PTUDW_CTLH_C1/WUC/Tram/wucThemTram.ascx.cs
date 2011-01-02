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
using System.Collections.Generic;

namespace PTUDW_CTLH_C1.WUC.Tram
{
    public partial class wucThemTram : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void ldsNhanVienDieuHanhTram_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            NhanVienBUS nhanvienbus = new NhanVienBUS();
           e.Result = nhanvienbus.SelectNhanVienLaDieuHanhTramResult();
        }
    }
}