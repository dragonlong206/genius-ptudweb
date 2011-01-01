using System;
using System.Collections.Generic;
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

namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class wucPhanCongChuyen : System.Web.UI.UserControl
    {
        int iMaTramDi = 2;
        protected void Page_Load(object sender, EventArgs e)
        {
                //iMaTramDi = (int)Session["MaTram"];   
        }

        protected void ldsChuyen_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            TuyenXeBUS tuyenXeBUS = new TuyenXeBUS();
            ChuyenXeBUS chuyenXeBUS = new ChuyenXeBUS(); 
            List<Int32> danhSachTuyen = tuyenXeBUS.LayDanhSachMaTuyen(iMaTramDi);
            e.Result = chuyenXeBUS.LayDanhSachChuyenXe(danhSachTuyen);
        }

        protected void gvChuyen_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvChuyen.EditIndex = e.NewEditIndex;
        }

        protected void gvChuyen_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            XeBUS busXe = new XeBUS();
            ChuyenXeBUS busChuyenXe = new ChuyenXeBUS();

            DropDownList ddlTX = (DropDownList)this.gvChuyen.Rows[gvChuyen.EditIndex].FindControl("ddlTaiXe");
            int iMaTaiXe = int.Parse(ddlTX.SelectedValue.ToString());
            int iMaXe = busXe.LayMaXe(iMaTaiXe);

            //Label1.Text = this.gvChuyen.Rows[gvChuyen.EditIndex].Cells[1].Text;
            int iMaChuyenXe = int.Parse(this.gvChuyen.Rows[gvChuyen.EditIndex].Cells[1].Text);

            if (busChuyenXe.KiemTraXeCoThePhanCong(iMaXe, iMaChuyenXe) == true)
            {
                busChuyenXe.CapNhatChuyen(iMaChuyenXe, iMaXe);
                gvChuyen.EditIndex = -1;
            }
            else
            {
                this.lblThongBao.Text = "Xe này đã được phân công rồi";
                this.lblThongBao.ForeColor = System.Drawing.Color.Red;
                //e.Cancel = true;
            }
        }
    }
}