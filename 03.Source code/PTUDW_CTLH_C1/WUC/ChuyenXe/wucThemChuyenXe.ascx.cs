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

namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class wucThemChuyenXe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.fvChuyenXe.
        }

        protected void fvChuyenXe_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            lbThongBao.Text = "Thêm thành công";
        }

        protected void fvChuyenXe_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
           
        }

    }
}