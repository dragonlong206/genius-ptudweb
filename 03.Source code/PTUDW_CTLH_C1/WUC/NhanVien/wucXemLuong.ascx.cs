﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
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

using System.Linq;

namespace PTUDW_CTLH_C1.WUC.NhanVien
{
    public partial class wucXemLuong : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NhanVienBUS busNhanVien = new NhanVienBUS();
                List<usp_SelectNamResult> dsNam = busNhanVien.XemDanhSachNam(2);
                this.ddlNam.DataSource = dsNam;
               this.ddlNam.DataValueField = "Nam";
               this.ddlNam.DataTextField = "Nam";
              this.ddlNam.DataBind();
            }

            
        }

        protected void ldsChuyenXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {    
             ChuyenXeBUS ChuyenXe = new ChuyenXeBUS();

             if (!IsPostBack)
             {
                 e.Result = ChuyenXe.XemChuyenDaChayTheoThang(0, 12, 2010);
                
             }
             else 
             {                
                 e.Result = ChuyenXe.XemChuyenDaChayTheoThang(2, int.Parse(ddlThang.SelectedValue), int.Parse(ddlNam.SelectedValue));
             }
        }


        protected void btnOk_Click(object sender, EventArgs e)
        {
            gvChuyenDaChay.DataBind();

            if (gvChuyenDaChay.Rows.Count > 0)
            {
                lblThongBao.Text = "CÁC CHUYẾN TRONG THÁNG";
                lblThongBao.Visible = true;
                lblLuong.Visible = true;
                lblLuong.Text = string.Format("Tổng Lương : {0}", TinhTong());
            }
            else
            {
                lblThongBao.Text = "KHÔNG TÌM THẤY KẾT QUẢ NÀO";
                lblThongBao.Visible = true;
                lblLuong.Visible = false;
            }            
        }

        protected double TinhTong()
        {
            ChuyenXeBUS Chuyenxe = new ChuyenXeBUS();
            NhanVienBUS Nhanvien = new NhanVienBUS();

            double TongLuong, LuongCoDinh, TongLuongChuyen;
            LuongCoDinh =  Nhanvien.LuongCoDinhTrongThang(2);
            TongLuongChuyen = Chuyenxe.TongLuongTrongThang(2, int.Parse(ddlThang.SelectedValue), int.Parse(ddlNam.SelectedValue));
            TongLuong = LuongCoDinh + TongLuongChuyen;
            return TongLuong;
           
        }
    }
}