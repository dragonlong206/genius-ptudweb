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
using System.Collections.Generic;
using BUS;
using DTO;

namespace PTUDW_CTLH_C1.WUC.Xe
{
    public partial class wucPhanCongXe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblThongBao.Text = string.Empty;
            gvXe.DataSource = ldsDSXe;
            gvXe.DataBind();
        }

        protected void ldsTaiXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            
        }



        //protected void gvXe_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Luu")
        //    {
        //        //Response.Write(e.CommandArgument);
        //        this.lblThongBao.Text = "Cập nhật thành công tại vị trí: " + this.gvXe.SelectedIndex;
        //        //this.gvXe.Selected
        //    }
        //}

        protected void gvXe_SelectedIndexChanged(object sender, EventArgs e)
        {
//            this.lblThongBao.Text = "Cập nhật thành công tại vị trí: " + this.gvXe.SelectedIndex;
            DropDownList ddlTX = (DropDownList)this.gvXe.SelectedRow.Cells[4].FindControl("ddlTaiXe");            
            int iMaTaiXe = int.Parse(ddlTX.SelectedValue.ToString());
            int iMaXe = int.Parse(this.gvXe.SelectedDataKey.Value.ToString());
            XeBUS busXe = new XeBUS();
            bool bThanhCong = busXe.PhanXeChoTaiXe(iMaXe, iMaTaiXe);
            if (bThanhCong)
            {
                this.lblThongBao.Text = "Đã phân xe " + this.gvXe.SelectedRow.Cells[0].Text
                    + " cho tài xế " + ddlTX.SelectedItem.Text;
                this.gvXe.DataBind();
            }
            else
            {
                this.lblThongBao.Text = "Phân công không thành công";
            }
        }

        protected void ddlPhanCong_SelectedIndexChanged(object sender, EventArgs e)
        {
            int TinhTrangPhanCong = int.Parse(ddlPhanCong.SelectedValue);
            if (TinhTrangPhanCong == 0)
            {
                gvXe.DataSource = ldsDSXe;
                gvXe.DataBind();
            }
            else
            {
                if (TinhTrangPhanCong == 1)
                {
                    gvXe.DataSource = ldsXeDaPhanCong;
                    gvXe.DataBind();
                }
                else
                {
                    if (TinhTrangPhanCong == 2)
                    {
                        gvXe.DataSource = ldsAllXe;
                        gvXe.DataBind();
                    }
                }
            }
        }

        protected void ldsXeDaPhanCong_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            XeBUS XeBUS = new XeBUS();
            e.Result = XeBUS.LayDSXeDaPhanCong();
        }

        protected void ldsAllXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            
        }

       
        protected void ldsDSXe_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            XeBUS XeBUS = new XeBUS();
            e.Result = XeBUS.LayDSXeChuaPhanCong();
        }

        protected void ldsTaiXe_Selecting1(object sender, LinqDataSourceSelectEventArgs e)
        {
            NhanVienBUS NhanVienBUS = new NhanVienBUS();
            e.Result = NhanVienBUS.LayDSTaiXeChuaPhanCong();
        }
    }
}