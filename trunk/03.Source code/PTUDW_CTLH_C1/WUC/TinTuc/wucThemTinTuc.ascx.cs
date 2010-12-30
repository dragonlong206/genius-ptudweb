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
    public partial class wucThemTinTuc : System.Web.UI.UserControl
    {
        //private static string strFileName;
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox txtNgayDang = (TextBox)this.fvChiTietTinTuc.FindControl("txtNgayDang");
            //txtNgayDang.Text = DateTime.Now.Date.ToLongDateString();
        }

        protected void fvChiTietTinTuc_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                this.Visible = false;
                this.Parent.FindControl("btnInsert").Visible = true;
            }

            //if (e.CommandName == "Insert")
            //{
            //    this.Parent.FindControl("ldsTinTuc").DataBind();
            //    this.Parent.FindControl("rptTinTuc").DataBind();
                
            //}
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
            this.Parent.FindControl("ldsTinTuc").DataBind();
            this.Parent.FindControl("rptTinTuc").DataBind();
        }

        protected void fvDangTin_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh;
            afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)fvDangTin.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                e.Values["HinhAnh"] = afuHinhAnh.FileName;
            }
            e.Values["NgayDang"] = DateTime.Parse(((TextBox)this.fvDangTin.FindControl("txtNgayDang")).Text);
        }
        
    }
}