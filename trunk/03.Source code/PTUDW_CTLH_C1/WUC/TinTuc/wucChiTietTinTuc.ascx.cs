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
using BUS;

namespace PTUDW_CTLH_C1.WUC.TinTuc
{
    public partial class wucChiTietTinTuc : System.Web.UI.UserControl
    {
        //private static string strFileName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IsLogin"] == 0 || (int)Session["MaLoaiNhanVien"] != 1)
            {
                Response.Redirect("~/Default.aspx?showMessage=true");
            }
        }

        protected void afuHinhAnh_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
        {
            SaveFileToServer(e.filename);
            //strFileName = e.filename;
        }

        private void SaveFileToServer(string FileName)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh;
            afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)fvChiTietTinTuc.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                string strPath = MapPath("~/Images/TinTuc/") + Path.GetFileName(FileName);
                afuHinhAnh.SaveAs(strPath);
            }
        }

        protected void fvChiTietTinTuc_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            Response.Redirect("~/Administration/Admin/TinTuc.aspx");
        }

        protected void afuHinhAnh_UploadedComplete_Insert(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
        {
            
        }

        protected void fvChiTietTinTuc_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)fvChiTietTinTuc.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                this.SaveFileToServer(afuHinhAnh.FileName);
            }
        }

        protected void fvChiTietTinTuc_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)fvChiTietTinTuc.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                e.Values["HinhAnh"] = afuHinhAnh.FileName;
            }

            e.Values["NgayDang"] = DateTime.Parse(((TextBox)this.fvChiTietTinTuc.FindControl("txtNgayDang")).Text);
        }

        protected void fvChiTietTinTuc_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)fvChiTietTinTuc.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                e.NewValues["HinhAnh"] = afuHinhAnh.FileName;
            }
            e.NewValues["NgayDang"] = DateTime.Parse(((TextBox)this.fvChiTietTinTuc.FindControl("txtNgayDang")).Text);
        }

        protected void fvChiTietTinTuc_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            Response.Redirect("~/Administration/Admin/TinTuc.aspx");
        }
    }
}