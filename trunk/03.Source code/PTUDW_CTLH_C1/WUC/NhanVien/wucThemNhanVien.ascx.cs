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

namespace PTUDW_CTLH_C1.WUC.NhanVien
{
    public partial class wucThemNhanVien : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblThongBao.Visible = false;
        }

        protected void fvThemNhanVien_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            lblThongBao.Text = "Đã thêm thành công một nhân viên!";
            lblThongBao.Visible = true;
        }
    }
}