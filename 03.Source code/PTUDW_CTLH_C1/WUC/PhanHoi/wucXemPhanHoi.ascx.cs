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

namespace PTUDW_CTLH_C1.WUC.PhanHoi
{
    public partial class wucXemPhanHoi : System.Web.UI.UserControl
    {
        int iMaPhanHoi;
        protected void Page_Load(object sender, EventArgs e)
        {
                if ((int)Session["IsLogin"] == 1)
                {
                    gvPhanHoi.DataSource = ldsPhanHoi;
                    gvPhanHoi.DataBind();
                }
        }

        protected void gvPhanHoi_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int iMaTinhTrangDoc = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TinhTrangDoc"));

                // Nếu chưa đọc
                if (iMaTinhTrangDoc == 1)
                {
                    e.Row.BackColor = System.Drawing.Color.FromArgb(255, 234, 255); // Full row color
                    e.Row.BackColor = System.Drawing.Color.Yellow; // Column color

                    e.Row.ForeColor = System.Drawing.Color.Red; // Change the row's Text color
                    e.Row.Font.Italic = true;

                  //  e.Row.Cells[0].Controls.Add(gvPhanHoi); // to add runtime control in GridView
                } 
            }
        }

        protected void gvPhanHoi_SelectedIndexChanged(object sender, EventArgs e)
        {
            //iMaPhanHoi = gvPhanHoi.SelectedRow.Cells[0]
        }
    }
}