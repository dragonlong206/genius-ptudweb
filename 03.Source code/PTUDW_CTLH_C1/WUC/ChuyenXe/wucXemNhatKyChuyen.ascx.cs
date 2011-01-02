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

namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class XemNhatKyChuyen : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }


        protected void ldsDSChuyenXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            int iMaNhanVien = (int)Session["MaNhanVien"];
            DateTime ngay;
            if (!IsPostBack)
            {
                ngay = new DateTime(2000, 1, 1);
            }
            else
            {
                ngay = DateTime.Parse(txtNgayDuocChon.Text);
               
             }
            ChuyenXeBUS chuyenxe = new ChuyenXeBUS();
            List<usp_SelectChuyenALLByMaNhanVienAndNgayKhoiHanhResult> DanhSachChuyen;
            DanhSachChuyen = chuyenxe.SelectChuyenALLByMaNhanVienAndNgayKhoiHanhResult(iMaNhanVien, ngay);
            e.Result = DanhSachChuyen;
            if (IsPostBack)
            {
                if (DanhSachChuyen.Count > 0)
                {
                    lblThongBao.Text = "CÁC CHUYẾN ĐÃ CHẠY";
                }
                else
                {
                    lblThongBao.Text = "KHÔNG CÓ CHUYẾN THÍCH HỢP";
                }
              
            }
        }

        protected void btnXemChuyen_Click(object sender, EventArgs e)
        {
             dgvDSChuyenXe.DataBind();
        }


    }
}