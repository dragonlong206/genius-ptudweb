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
namespace PTUDW_CTLH_C1.WUC
{
    public partial class wucChiTietSearchChuyen : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int maTramDi = int.Parse(Request.QueryString["MaTramDi"].ToString());
            int maTramDen = int.Parse(Request.QueryString["MaTramDen"].ToString());
            int giaVe = int.Parse(Request.QueryString["GiaVe"].ToString());
            String chuoi = Request.QueryString["ThoiGianKhoiHanh"].ToString();
            DateTime ThoiGianKhoiHanh;
            DateTime.TryParse(Request.QueryString["ThoiGianKhoiHanh"].ToString() , out ThoiGianKhoiHanh);
            ChuyenXeBUS chuyen = new ChuyenXeBUS();
            List<usp_SelectChuyenByMaTramGiaVaThoiGianKhoiHanhResult> listCHuyen = chuyen.SelectChuyenByMaTramGiaVaThoiGianKhoiHanh(maTramDi, maTramDen, giaVe, ThoiGianKhoiHanh);
            gvDSChuyen.DataSource = listCHuyen;
            gvDSChuyen.DataBind();
        }
    }
}