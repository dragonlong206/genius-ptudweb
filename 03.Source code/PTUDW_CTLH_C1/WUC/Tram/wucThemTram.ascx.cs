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
using System.IO;

namespace PTUDW_CTLH_C1.WUC.Tram
{
    public partial class wucThemTram : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void ldsNhanVienDieuHanhTram_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            NhanVienBUS nhanvienbus = new NhanVienBUS();
           e.Result = nhanvienbus.SelectNhanVienLaDieuHanhTramResult();
        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh;
            afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)FormView1.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                e.Values["HinhAnh"] = afuHinhAnh.FileName;
            }
        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            AjaxControlToolkit.AsyncFileUpload afuHinhAnh;
            afuHinhAnh = (AjaxControlToolkit.AsyncFileUpload)FormView1.FindControl("afuHinhAnh");
            if (afuHinhAnh.HasFile)
            {
                string strPath = MapPath("~/Images/Tram/") + Path.GetFileName(afuHinhAnh.FileName);
                afuHinhAnh.SaveAs(strPath);
            }
            lblKetQua.Text = " Đã thêm thành trạm thành công";
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
           
        }
    }
}