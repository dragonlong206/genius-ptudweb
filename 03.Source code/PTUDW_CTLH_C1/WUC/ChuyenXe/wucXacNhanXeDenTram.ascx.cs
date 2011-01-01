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
using System.Collections.Specialized;
namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class wucXacNhanXeDenTram1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.cleNgayKhoiHanh.SelectedDate = DateTime.Now;
                this.cbTramDen.DataBind();
                this.cbTramDi.DataBind();
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            int iTramDi = int.Parse(cbTramDi.SelectedValue.ToString());
            int iTramDen = int.Parse(cbTramDen.SelectedValue.ToString());
            //DateTime dtNgayKhoiHanh = DateTime.Parse(txtNgayKhoiHanh.Text.ToString());

            // DateTime dtNgayKhoiHanh = new DateTime(2010, 2, 2);
            //if (this.cleNgayKhoiHanh.SelectedDate != null)
            //{
            //DateTime dtNgayKhoiHanh = this.cleNgayKhoiHanh.SelectedDate.Value;
            //}
            //DateTime.TryParse(txtNgayKhoiHanh.Text.ToString(), out dtGioKhoiHanh);

            DateTime dtNgayKhoiHanh = DateTime.ParseExact(this.txtNgayKhoiHanh.Text, "dd/MM/yyyy", null);
            this.cleNgayKhoiHanh.SelectedDate = dtNgayKhoiHanh;

            int iGioKhoiHanh = -1;
            bool parsable = int.TryParse(txtGioXuatPhat.Text.ToString(), out iGioKhoiHanh);
            if (!parsable)
            {
                iGioKhoiHanh = -1;
            }

            int iGioDen = -1;
            parsable = int.TryParse(txtGioDen.Text.ToString(), out iGioDen);
            if (!parsable)
            {
                iGioDen = -1;
            }

            ChuyenXeBUS chuyenXeBus = new ChuyenXeBUS();
            List<usp_SelectChuyenXesByMaTramDiAndsMaTramDenResult> list = chuyenXeBus.SelectChuyenXeByMaTramDiVaMaTramDen(iTramDi, iTramDen, dtNgayKhoiHanh, iGioKhoiHanh, iGioDen);
            lbThongBao.Text = "";
            if (list.Count > 0)
            {
                gvChuyenXe.Visible = true;
                gvChuyenXe.DataSource = list;
                gvChuyenXe.DataBind();
            }
            else
            {
                lbThongBao.Text = "Không tồn tại chuyến xe";
                gvChuyenXe.Visible = false;
            }
        }

        public int maChuyenXe;
        protected void gvChuyenXe_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName.Equals("XemChiTiet"))
            {

                int dongHienTai = Convert.ToInt32(e.CommandArgument);
                maChuyenXe = int.Parse(gvChuyenXe.DataKeys[dongHienTai].Values["MaChuyenXe"].ToString());
                //this.fvChiTietChuyen.DataBind();
                //this.pnlThongTinChuyen.Visible = true;
                this.UpdateChiTietChuyen();
            }
        }

        protected void ldsThongTinChiTuyen_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {

            //ChuyenXeBUS chuyenXe = new ChuyenXeBUS();
            //e.Result = chuyenXe.SelectCHUYEN_XEResult(maChuyenXe);

            e.WhereParameters["MaChuyenXe"] = maChuyenXe;
        }


        protected void UpdateChiTietChuyen()
        {
            this.fvChiTietChuyen.DataBind();
            this.pnlThongTinChuyen.Visible = true;
        }

        protected void fvChiTietChuyen_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            this.lbThongBao.Text = "Update ok";
        }

        protected void fvChiTietChuyen_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Update"))
            {
                // ldsThongTinChiTietChuyen.Update(
                // lbThongBao.Text = "";

                ListDictionary keyValues = new ListDictionary();
                ListDictionary newValues = new ListDictionary();
                ListDictionary oldValues = new ListDictionary();

                keyValues.Add("MaChuyenXe", int.Parse(((Label)fvChiTietChuyen.FindControl("MaChuyenXeLabel1")).Text));
                //ko quan tam gia tri cu~,chi can` co' bien';
                int giatricu = 0;

                int giatrimoi;
                giatrimoi = int.Parse(((DropDownList)fvChiTietChuyen.FindControl("cbTinhTrang")).SelectedValue);


                oldValues.Add("MaTinhTrang", giatricu);
                newValues.Add("MaTinhTrang", giatrimoi);
                ldsThongTinChiTietChuyen.Update(keyValues, newValues, oldValues);
                fvChiTietChuyen.DataBind();


            }

        }
    }
}