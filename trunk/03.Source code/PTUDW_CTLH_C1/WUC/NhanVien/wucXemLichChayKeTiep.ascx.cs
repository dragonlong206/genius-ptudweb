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

namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class wucXemLichChayKeTiep : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ldsDanhSachChuyenKe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            ChuyenXeBUS ChuyenXeBUS = new ChuyenXeBUS();
            e.Result = ChuyenXeBUS.XemDanhSachChuyenKeTiep(1);
        }
    }
}