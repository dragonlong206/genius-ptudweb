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
using System.IO;

namespace PTUDW_CTLH_C1.WUC.TinTuc
{
    public partial class wucQuanLyTinTuc : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            this.pnlThemTinTuc.Visible = true;
            this.btnInsert.Visible = false;
        }

        protected void fvChiTietTinTuc_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                this.pnlThemTinTuc.Visible = false;
                this.btnInsert.Visible = true;
            }
        }

        protected void fvDangTin_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh;
            afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)fvDangTin.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                string strPath = MapPath("~/Images/TinTuc/") + Path.GetFileName(afuHinhAnh.FileName);
                afuHinhAnh.SaveAs(strPath);
            }
            
        }

        protected void fvDangTin_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh;
            afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)fvDangTin.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                e.Values["HinhAnh"] = afuHinhAnh.FileName;
            }
            TextBox txtNgayDang = ((TextBox)this.fvDangTin.FindControl("txtNgayDang"));
            DateTime dtNgayDang = DateTime.Now;
            bool bCanParse = DateTime.TryParse(txtNgayDang.Text, out dtNgayDang);
            if (bCanParse)
            {
                e.Values["NgayDang"] = dtNgayDang;
            }
            else
            {
                e.Values["NgayDang"] = DateTime.Now;
            }
        }
    }
}