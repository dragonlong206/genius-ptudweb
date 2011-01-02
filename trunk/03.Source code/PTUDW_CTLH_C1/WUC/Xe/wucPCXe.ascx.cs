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

namespace PTUDW_CTLH_C1.WUC.Xe
{
    public partial class wucPCXe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IsLogin"] == 0 || (int)Session["MaLoaiNhanVien"] != 2)
            {
                Response.Redirect("~/Default.aspx?showMessage=true");
            }
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void ddlPhanCong_SelectedIndexChanged(object sender, EventArgs e)
        {            
            BindData();            
        }

        private void BindData()
        {
            // Chuyển sang switch case 
            if (ddlPhanCong.SelectedIndex == 0)
            {
                ldsXe.Where = "MaTaiXe == NULL";
                gvXe.DataSource = ldsXe;
                gvXe.DataBind();
            }

            if (ddlPhanCong.SelectedIndex == 1)
            {
                ldsXe.Where = "MaTaiXe != NULL";
                gvXe.DataSource = ldsXe;
                gvXe.DataBind();
            }

            if (ddlPhanCong.SelectedIndex == 2)
            {
                ldsXe.Where = "1==1";
                gvXe.DataSource = ldsXe;
                gvXe.DataBind();
            }
            
        }

        protected void gvXe_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvXe.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void gvXe_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            e.KeepInEditMode = false;
            
        }

        protected void gvXe_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DropDownList ddlTX = (DropDownList)this.gvXe.Rows[gvXe.EditIndex].FindControl("ddlTaiXe");
            int iMaTaiXe = int.Parse(ddlTX.SelectedValue.ToString());
            int iMaXe = int.Parse(this.gvXe.Rows[gvXe.EditIndex].Cells[0].Text.ToString());
            XeBUS busXe = new XeBUS();
            bool bThanhCong = busXe.PhanXeChoTaiXe(iMaXe, iMaTaiXe);
            gvXe.EditIndex = -1;
            BindData();
        }

        protected void gvXe_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvXe.PageIndex = e.NewPageIndex;
            BindData();
        }

        protected void gvXe_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvXe.EditIndex = -1;
            BindData();
        }
    }
}